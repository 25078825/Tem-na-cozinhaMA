import { pool } from '../database/connection.js'

export async function listarIngredientes(req, res) {
  try {
    const [rows] = await pool.query(
      'SELECT id, nome FROM ingredientes ORDER BY nome'
    )

    res.json({
      success: true,
      data: rows,
      total: rows.length,
    })
  } catch (err) {
    console.error('[listarIngredientes]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao buscar ingredientes.' })
  }
}

export async function buscarIngrediente(req, res) {
  try {
    const { q } = req.query

    if (!q || q.trim().length < 2) {
      return res.status(400).json({
        success: false,
        message: 'Informe ao menos 2 caracteres para buscar.',
      })
    }

    const [rows] = await pool.query(
      'SELECT id, nome FROM ingredientes WHERE nome LIKE ? ORDER BY nome',
      [`%${q.trim()}%`]
    )

    res.json({
      success: true,
      data: rows,
      total: rows.length,
    })
  } catch (err) {
    console.error('[buscarIngrediente]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao buscar ingrediente.' })
  }
}

export async function receitasPorIngrediente(req, res) {
  try {
    const { id } = req.params

    if (!id || !/^\d+$/.test(id)) {
      return res.status(400).json({ success: false, message: 'ID inválido.' })
    }

    const [ing] = await pool.query(
      'SELECT id, nome FROM ingredientes WHERE id = ?', [Number(id)]
    )

    if (!ing.length) {
      return res.status(404).json({ success: false, message: 'Ingrediente não encontrado.' })
    }

    const [rows] = await pool.query(`
      SELECT
        r.id, r.nome, r.emoji, r.categoria,
        r.tempo, r.porcoes, r.dificuldade,
        r.rapida, r.tipica_festa
      FROM receitas r
      JOIN receita_ingredientes ri ON ri.receita_id = r.id
      WHERE ri.ingrediente_id = ? AND ri.opcional = 0
      ORDER BY r.nome
    `, [id])

    res.json({
      success: true,
      ingrediente: ing[0],
      data: rows.map(r => ({
        ...r,
        rapida:       Boolean(r.rapida),
        tipica_festa: Boolean(r.tipica_festa),
      })),
      total: rows.length,
    })
  } catch (err) {
    console.error('[receitasPorIngrediente]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao buscar receitas do ingrediente.' })
  }
}