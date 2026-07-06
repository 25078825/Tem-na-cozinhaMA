import { pool } from '../../database/connection.js'

export async function listar(req, res) {
  try {
    const [rows] = await pool.query('SELECT * FROM ingredientes ORDER BY nome')
    res.json({ success: true, data: rows, total: rows.length })
  } catch (err) {
    console.error('[admin.ingredientes.listar]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao listar ingredientes.' })
  }
}

export async function criar(req, res) {
  try {
    const { nome } = req.body
    if (!nome?.trim()) return res.status(400).json({ success: false, message: 'Nome é obrigatório.' })
    if (nome.trim().length > 100) {
      return res.status(400).json({ success: false, message: 'Nome muito longo (máx. 100 caracteres).' })
    }

    const [resultado] = await pool.query(
      'INSERT INTO ingredientes (nome) VALUES (?)',
      [nome.trim()]
    )

    res.status(201).json({ success: true, message: 'Ingrediente criado.', data: { id: resultado.insertId } })
  } catch (err) {
    if (err.code === 'ER_DUP_ENTRY') {
      return res.status(409).json({ success: false, message: 'Esse ingrediente já existe.' })
    }
    console.error('[admin.ingredientes.criar]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao criar ingrediente.' })
  }
}

export async function atualizar(req, res) {
  try {
    const { id } = req.params
    const { nome } = req.body
    if (!nome?.trim()) return res.status(400).json({ success: false, message: 'Nome é obrigatório.' })

    const [resultado] = await pool.query(
      'UPDATE ingredientes SET nome = ? WHERE id = ?',
      [nome.trim(), id]
    )

    if (!resultado.affectedRows) {
      return res.status(404).json({ success: false, message: 'Ingrediente não encontrado.' })
    }

    res.json({ success: true, message: 'Ingrediente atualizado.' })
  } catch (err) {
    if (err.code === 'ER_DUP_ENTRY') {
      return res.status(409).json({ success: false, message: 'Esse ingrediente já existe.' })
    }
    console.error('[admin.ingredientes.atualizar]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao atualizar ingrediente.' })
  }
}

export async function excluir(req, res) {
  try {
    const { id } = req.params
    const [resultado] = await pool.query('DELETE FROM ingredientes WHERE id = ?', [id])

    if (!resultado.affectedRows) {
      return res.status(404).json({ success: false, message: 'Ingrediente não encontrado.' })
    }

    res.json({ success: true, message: 'Ingrediente excluído.' })
  } catch (err) {
    console.error('[admin.ingredientes.excluir]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao excluir ingrediente.' })
  }
}