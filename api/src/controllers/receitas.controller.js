import { pool } from '../database/connection.js'

function toArray(value) {
  if (!value) return []
  if (Array.isArray(value)) return value
  try { return JSON.parse(value) } catch { return [] }
}

export async function listarReceitas(req, res) {
  try {
    const { categoria, dificuldade, rapida, tipica_festa, vegano, diet } = req.query

    let sql = `
      SELECT
        r.id, r.nome, r.descricao, r.emoji, r.categoria,
        r.tempo_minutos, r.tempo, r.porcoes, r.dificuldade,
        r.rapida, r.tipica_festa, r.vegano, r.diet, r.destaque, r.ocasioes, r.modo_preparo,
        r.imagem_url
      FROM receitas r
      WHERE 1=1
    `

    const params = []

    if (categoria && categoria !== 'Todos') {
      sql += ' AND r.categoria = ?'
      params.push(categoria)
    }
    if (dificuldade) {
      sql += ' AND r.dificuldade = ?'
      params.push(dificuldade)
    }
    if (rapida === 'true')       sql += ' AND r.rapida = 1'
    if (tipica_festa === 'true') sql += ' AND r.tipica_festa = 1'
    if (vegano === 'true')       sql += ' AND r.vegano = 1'
    if (diet === 'true')         sql += ' AND r.diet = 1'

    sql += ' ORDER BY r.nome'

    const [receitas] = await pool.query(sql, params)

    const [ingredientes] = await pool.query(`
      SELECT ri.receita_id, i.nome, ri.opcional
      FROM receita_ingredientes ri
      JOIN ingredientes i ON i.id = ri.ingrediente_id
    `)

    const ingMap = {}
    for (const ing of ingredientes) {
      if (!ingMap[ing.receita_id]) ingMap[ing.receita_id] = []
      ingMap[ing.receita_id].push({ nome: ing.nome, opcional: Boolean(ing.opcional) })
    }

    const resultado = receitas.map(r => ({
      ...r,
      rapida:       Boolean(r.rapida),
      tipica_festa: Boolean(r.tipica_festa),
      vegano:       Boolean(r.vegano),
      diet:         Boolean(r.diet),
      destaque:     Boolean(r.destaque),
      ocasioes:     toArray(r.ocasioes),
      ingredientes: ingMap[r.id] ?? [],
    }))

    res.json({ success: true, data: resultado, total: resultado.length })
  } catch (err) {
    console.error('[listarReceitas]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao buscar receitas.' })
  }
}

export async function buscarPorIngredientes(req, res) {
  try {
    const { ingredientes } = req.query

    if (!ingredientes) {
      return res.status(400).json({
        success: false,
        message: 'Informe os ingredientes separados por vírgula.',
      })
    }

    const lista = ingredientes.split(',').map(s => s.trim()).filter(Boolean)

    if (!lista.length) {
      return res.status(400).json({ success: false, message: 'Lista vazia.' })
    }

    if (lista.length > 50) {
      return res.status(400).json({ success: false, message: 'Máximo de 50 ingredientes por busca.' })
    }

    const [todasReceitas] = await pool.query(`
      SELECT
        r.id, r.nome, r.emoji, r.categoria, r.tempo, r.tempo_minutos,
        r.porcoes, r.dificuldade, r.rapida, r.tipica_festa, r.ocasioes,
        COUNT(DISTINCT ri.ingrediente_id) AS total_obrigatorios
      FROM receitas r
      JOIN receita_ingredientes ri ON ri.receita_id = r.id AND ri.opcional = 0
      GROUP BY r.id
    `)

    const placeholders = lista.map(() => '?').join(',')
    const [matches] = await pool.query(`
      SELECT ri.receita_id, COUNT(DISTINCT ri.ingrediente_id) AS possui
      FROM receita_ingredientes ri
      JOIN ingredientes i ON i.id = ri.ingrediente_id
      WHERE ri.opcional = 0 AND i.nome IN (${placeholders})
      GROUP BY ri.receita_id
    `, lista)

    const possuiMap = {}
    for (const m of matches) possuiMap[m.receita_id] = Number(m.possui)

    const resultado = todasReceitas.map(r => {
      const possui   = possuiMap[r.id] ?? 0
      const faltando = r.total_obrigatorios - possui
      const pct      = Math.round((possui / r.total_obrigatorios) * 100)
      return {
        ...r,
        rapida:       Boolean(r.rapida),
        tipica_festa: Boolean(r.tipica_festa),
        ocasioes:     toArray(r.ocasioes),
        possui, faltando, pct,
      }
    })

    const completas = resultado.filter(r => r.faltando === 0)
    const quase     = resultado.filter(r => r.faltando > 0 && r.faltando <= 3)

    res.json({
      success: true,
      data: { completas, quase },
      total: { completas: completas.length, quase: quase.length },
    })
  } catch (err) {
    console.error('[buscarPorIngredientes]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao buscar por ingredientes.' })
  }
}

export async function buscarReceitaPorId(req, res) {
  try {
    const { id } = req.params

    if (!id || !/^\d+$/.test(id)) {
      return res.status(400).json({ success: false, message: 'ID inválido.' })
    }

    const [rows] = await pool.query(
      `SELECT id, nome, descricao, emoji, categoria,
              tempo_minutos, tempo, porcoes, dificuldade,
              rapida, tipica_festa, vegano, diet, destaque, ocasioes, modo_preparo
       FROM receitas WHERE id = ?`, [Number(id)]
    )

    if (!rows.length) {
      return res.status(404).json({ success: false, message: 'Receita não encontrada.' })
    }

    const r = rows[0]

    const [ingredientes] = await pool.query(`
      SELECT i.nome, ri.opcional
      FROM receita_ingredientes ri
      JOIN ingredientes i ON i.id = ri.ingrediente_id
      WHERE ri.receita_id = ?
    `, [Number(id)])

    const receita = {
      ...r,
      rapida:       Boolean(r.rapida),
      tipica_festa: Boolean(r.tipica_festa),
      vegano:       Boolean(r.vegano),
      diet:         Boolean(r.diet),
      destaque:     Boolean(r.destaque),
      ocasioes:     toArray(r.ocasioes),
      modo_preparo: toArray(r.modo_preparo),
      ingredientes: ingredientes.map(i => ({
        nome:     i.nome,
        opcional: Boolean(i.opcional),
      })),
    }

    res.json({ success: true, data: receita })
  } catch (err) {
    console.error('[buscarReceitaPorId]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao buscar receita.' })
  }
}