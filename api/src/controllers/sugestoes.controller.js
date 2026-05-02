import { transporter } from '../services/mailer.js'

function escapeHtml(str) {
  return String(str)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#x27;')
}

function stripNewlines(str) {
  return String(str).replace(/[\r\n]/g, ' ').trim()
}

const EMAIL_REGEX = /^[^\s@]+@[^\s@]+\.[^\s@]+$/

export async function sugerirReceita(req, res) {
  const { nome, descricao, ingredientes, modoPreparo, nomeAutor, emailAutor } = req.body

  if (!nome?.trim() || !ingredientes?.trim() || !modoPreparo?.trim()) {
    return res.status(400).json({
      success: false,
      message: 'Nome, ingredientes e modo de preparo são obrigatórios.',
    })
  }

  if (nome.trim().length > 150) {
    return res.status(400).json({ success: false, message: 'Nome muito longo (máx. 150 caracteres).' })
  }
  if (descricao && descricao.trim().length > 500) {
    return res.status(400).json({ success: false, message: 'Descrição muito longa (máx. 500 caracteres).' })
  }
  if (ingredientes.trim().length > 2000) {
    return res.status(400).json({ success: false, message: 'Ingredientes muito longos (máx. 2000 caracteres).' })
  }
  if (modoPreparo.trim().length > 5000) {
    return res.status(400).json({ success: false, message: 'Modo de preparo muito longo (máx. 5000 caracteres).' })
  }
  if (nomeAutor && nomeAutor.trim().length > 100) {
    return res.status(400).json({ success: false, message: 'Nome do autor muito longo (máx. 100 caracteres).' })
  }
  if (emailAutor && !EMAIL_REGEX.test(emailAutor.trim())) {
    return res.status(400).json({ success: false, message: 'E-mail do autor inválido.' })
  }

  const safeNome        = escapeHtml(nome.trim())
  const safeDescricao   = descricao   ? escapeHtml(descricao.trim())   : null
  const safeIngredientes = escapeHtml(ingredientes.trim())
  const safePreparo     = escapeHtml(modoPreparo.trim())
  const safeNomeAutor   = nomeAutor   ? escapeHtml(stripNewlines(nomeAutor))   : null
  const safeEmailAutor  = emailAutor  ? escapeHtml(stripNewlines(emailAutor))  : null

  try {
    await transporter.sendMail({
      from:    `"Tem na Cozinha MA" <${process.env.EMAIL_USER}>`,
      to:      process.env.EMAIL_DEST,
      subject: `Nova sugestão de receita: ${stripNewlines(nome)}`,
      html: `
        <h2 style="color:#D97706">Nova sugestão de receita</h2>
        <p><strong>Nome:</strong> ${safeNome}</p>
        ${safeDescricao ? `<p><strong>Descrição:</strong> ${safeDescricao}</p>` : ''}
        <h3>Ingredientes</h3>
        <pre style="background:#f9f9f9;padding:12px;border-radius:8px;white-space:pre-wrap">${safeIngredientes}</pre>
        <h3>Modo de preparo</h3>
        <pre style="background:#f9f9f9;padding:12px;border-radius:8px;white-space:pre-wrap">${safePreparo}</pre>
        ${safeNomeAutor || safeEmailAutor ? `
        <hr/>
        <p><strong>Enviado por:</strong> ${safeNomeAutor || '—'} ${safeEmailAutor ? `(${safeEmailAutor})` : ''}</p>
        ` : ''}
      `,
    })

    res.json({ success: true, message: 'Sugestão enviada com sucesso!' })
  } catch (err) {
    console.error('[sugerirReceita]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao enviar sugestão.' })
  }
}
