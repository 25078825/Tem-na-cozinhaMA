import { pool } from '../../database/connection.js'

const CAMPOS = [
  'nome', 'descricao', 'emoji', 'categoria', 'tempo_minutos', 'tempo',
  'porcoes', 'dificuldade', 'rapida', 'tipica_festa', 'vegano', 'diet',
  'destaque', 'modo_preparo', 'ocasioes', 'imagem_url',
]

function validarPayload(body) {
  if (!body.nome?.trim()) return 'Nome é obrigatório.'
  if (body.nome.trim().length > 150) return 'Nome muito longo (máx. 150 caracteres).'
  if (body.dificuldade && !['Fácil', 'Média', 'Difícil'].includes(body.dificuldade)) {
    return 'Dificuldade inválida.'
  }
  return null
}

function montarValores(body) {
  return CAMPOS.map((campo) => {
    const valor = body[campo]
    if (['modo_preparo', 'ocasioes'].includes(campo)) {
      return valor ? JSON.stringify(valor) : null
    }
    if (['rapida', 'tipica_festa', 'vegano', 'diet', 'destaque'].includes(campo)) {
      return valor ? 1 : 0
    }
    return valor ?? null
  })
}

export async function listar(req, res) {
  try {
    const [rows] = await pool.query('SELECT * FROM receitas ORDER BY nome')
    res.json({ success: true, data: rows, total: rows.length })
  } catch (err) {
    console.error('[admin.receitas.listar]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao listar receitas.' })
  }
}

export async function buscarPorId(req, res) {
  try {
    const { id } = req.params
    const [rows] = await pool.query('SELECT * FROM receitas WHERE id = ?', [id])
    if (!rows.length) return res.status(404).json({ success: false, message: 'Receita não encontrada.' })

    const [ingredientes] = await pool.query(
      `SELECT i.id, i.nome, ri.opcional FROM receita_ingredientes ri
       JOIN ingredientes i ON i.id = ri.ingrediente_id WHERE ri.receita_id = ?`,
      [id]
    )

    res.json({ success: true, data: { ...rows[0], ingredientes } })
  } catch (err) {
    console.error('[admin.receitas.buscarPorId]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao buscar receita.' })
  }
}

export async function criar(req, res) {
  try {
    const erro = validarPayload(req.body)
    if (erro) return res.status(400).json({ success: false, message: erro })

    const valores = montarValores(req.body)
    const placeholders = CAMPOS.map(() => '?').join(', ')

    const [resultado] = await pool.query(
      `INSERT INTO receitas (${CAMPOS.join(', ')}) VALUES (${placeholders})`,
      valores
    )

    const receitaId = resultado.insertId

    // ingredientes: [{ id, opcional }]
    if (Array.isArray(req.body.ingredientes) && req.body.ingredientes.length) {
      const linhas = req.body.ingredientes.map((i) => [receitaId, i.id, i.opcional ? 1 : 0])
      await pool.query(
        'INSERT INTO receita_ingredientes (receita_id, ingrediente_id, opcional) VALUES ?',
        [linhas]
      )
    }

    res.status(201).json({ success: true, message: 'Receita criada.', data: { id: receitaId } })
  } catch (err) {
    console.error('[admin.receitas.criar]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao criar receita.' })
  }
}

export async function atualizar(req, res) {
  try {
    const { id } = req.params
    const erro = validarPayload(req.body)
    if (erro) return res.status(400).json({ success: false, message: erro })

    const [existe] = await pool.query('SELECT id FROM receitas WHERE id = ?', [id])
    if (!existe.length) return res.status(404).json({ success: false, message: 'Receita não encontrada.' })

    const valores = montarValores(req.body)
    const sets = CAMPOS.map((c) => `${c} = ?`).join(', ')

    await pool.query(`UPDATE receitas SET ${sets} WHERE id = ?`, [...valores, id])

    if (Array.isArray(req.body.ingredientes)) {
      await pool.query('DELETE FROM receita_ingredientes WHERE receita_id = ?', [id])
      if (req.body.ingredientes.length) {
        const linhas = req.body.ingredientes.map((i) => [id, i.id, i.opcional ? 1 : 0])
        await pool.query(
          'INSERT INTO receita_ingredientes (receita_id, ingrediente_id, opcional) VALUES ?',
          [linhas]
        )
      }
    }

    res.json({ success: true, message: 'Receita atualizada.' })
  } catch (err) {
    console.error('[admin.receitas.atualizar]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao atualizar receita.' })
  }
}

export async function excluir(req, res) {
  try {
    const { id } = req.params
    const [resultado] = await pool.query('DELETE FROM receitas WHERE id = ?', [id])

    if (!resultado.affectedRows) {
      return res.status(404).json({ success: false, message: 'Receita não encontrada.' })
    }

    res.json({ success: true, message: 'Receita excluída.' })
  } catch (err) {
    console.error('[admin.receitas.excluir]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao excluir receita.' })
  }
}