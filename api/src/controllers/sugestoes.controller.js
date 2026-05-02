import { transporter } from '../services/mailer.js'

export async function sugerirReceita(req, res) {
  const { nome, descricao, ingredientes, modoPreparo, nomeAutor, emailAutor } = req.body

  if (!nome?.trim() || !ingredientes?.trim() || !modoPreparo?.trim()) {
    return res.status(400).json({
      success: false,
      message: 'Nome, ingredientes e modo de preparo são obrigatórios.',
    })
  }

  if (nome.trim().length > 150) {
    return res.status(400).json({ success: false, message: 'Nome muito longo.' })
  }

  try {
    await transporter.sendMail({
      from: `"Tem na Cozinha MA" <${process.env.EMAIL_USER}>`,
      to: process.env.EMAIL_DEST,
      subject: `🍲 Nova sugestão de receita: ${nome.trim()}`,
      html: `
        <h2 style="color:#D97706">Nova sugestão de receita</h2>

        <p><strong>Nome da receita:</strong> ${nome.trim()}</p>
        ${descricao ? `<p><strong>Descrição:</strong> ${descricao.trim()}</p>` : ''}

        <h3>Ingredientes</h3>
        <pre style="background:#f9f9f9;padding:12px;border-radius:8px">${ingredientes.trim()}</pre>

        <h3>Modo de preparo</h3>
        <pre style="background:#f9f9f9;padding:12px;border-radius:8px">${modoPreparo.trim()}</pre>

        ${nomeAutor || emailAutor ? `
        <hr/>
        <p><strong>Enviado por:</strong> ${nomeAutor || '—'} ${emailAutor ? `(${emailAutor})` : ''}</p>
        ` : ''}
      `,
    })

    res.json({ success: true, message: 'Sugestão enviada com sucesso!' })
  } catch (err) {
    console.error('[sugerirReceita]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao enviar sugestão.' })
  }
}
