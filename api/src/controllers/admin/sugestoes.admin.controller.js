import jwt from 'jsonwebtoken'
import { pool } from '../../database/connection.js'

export async function listar(req, res) {
  try {
    const { status } = req.query
    let sql = 'SELECT * FROM sugestoes WHERE 1=1'
    const params = []

    if (status && ['pendente', 'aceita', 'rejeitada'].includes(status)) {
      sql += ' AND status = ?'
      params.push(status)
    }

    sql += ' ORDER BY created_at DESC'

    const [rows] = await pool.query(sql, params)
    res.json({ success: true, data: rows, total: rows.length })
  } catch (err) {
    console.error('[admin.sugestoes.listar]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao listar sugestões.' })
  }
}

async function inserirReceitaAPartirDaSugestao(sugestao) {
  // Cria uma receita "mínima" a partir do texto livre da sugestão.
  // Fica marcada com destaque=0 para o admin revisar/editar os detalhes depois pelo CRUD.
  const [resultado] = await pool.query(
    `INSERT INTO receitas (nome, descricao, modo_preparo, dificuldade)
     VALUES (?, ?, ?, 'Fácil')`,
    [
      sugestao.nome,
      sugestao.descricao || null,
      JSON.stringify([sugestao.modo_preparo]),
    ]
  )
  return resultado.insertId
}

export async function aceitarPeloPainel(req, res) {
  try {
    const { id } = req.params

    const [rows] = await pool.query('SELECT * FROM sugestoes WHERE id = ?', [id])
    if (!rows.length) return res.status(404).json({ success: false, message: 'Sugestão não encontrada.' })

    const sugestao = rows[0]
    if (sugestao.status !== 'pendente') {
      return res.status(409).json({ success: false, message: 'Essa sugestão já foi respondida.' })
    }

    const receitaId = await inserirReceitaAPartirDaSugestao(sugestao)

    await pool.query(
      `UPDATE sugestoes SET status = 'aceita', receita_id = ?, respondida_em = NOW() WHERE id = ?`,
      [receitaId, id]
    )

    res.json({ success: true, message: 'Sugestão aceita e receita criada.', data: { receitaId } })
  } catch (err) {
    console.error('[admin.sugestoes.aceitarPeloPainel]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao aceitar sugestão.' })
  }
}

export async function rejeitar(req, res) {
  try {
    const { id } = req.params

    const [resultado] = await pool.query(
      `UPDATE sugestoes SET status = 'rejeitada', respondida_em = NOW() WHERE id = ? AND status = 'pendente'`,
      [id]
    )

    if (!resultado.affectedRows) {
      return res.status(409).json({ success: false, message: 'Sugestão não encontrada ou já respondida.' })
    }

    res.json({ success: true, message: 'Sugestão rejeitada.' })
  } catch (err) {
    console.error('[admin.sugestoes.rejeitar]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao rejeitar sugestão.' })
  }
}

// Aceite via link do e-mail (sem precisar estar logado) — token assinado, de uso único
export async function aceitarPorToken(req, res) {
  try {
    const { token } = req.query

    if (!token) {
      return res.status(400).send('Token não informado.')
    }

    let payload
    try {
      payload = jwt.verify(token, process.env.JWT_SECRET)
    } catch {
      return res.status(400).send('Link inválido ou expirado.')
    }

    if (payload.type !== 'aceitar_sugestao') {
      return res.status(400).send('Token inválido.')
    }

    const [rows] = await pool.query('SELECT * FROM sugestoes WHERE id = ?', [payload.sugestaoId])
    if (!rows.length) return res.status(404).send('Sugestão não encontrada.')

    const sugestao = rows[0]

    if (sugestao.status !== 'pendente') {
      return res.send('Essa sugestão já havia sido respondida anteriormente.')
    }

    const receitaId = await inserirReceitaAPartirDaSugestao(sugestao)

    await pool.query(
      `UPDATE sugestoes SET status = 'aceita', receita_id = ?, respondida_em = NOW() WHERE id = ?`,
      [receitaId, sugestao.id]
    )

    res.send(`Sugestão "${sugestao.nome}" aceita e adicionada às receitas com sucesso!`)
  } catch (err) {
    console.error('[admin.sugestoes.aceitarPorToken]', err.message)
    res.status(500).send('Erro ao processar a sugestão.')
  }
}