import bcrypt from 'bcryptjs'
import jwt from 'jsonwebtoken'
import { pool } from '../database/connection.js'

export async function login(req, res) {
  try {
    const { email, senha } = req.body

    if (!email?.trim() || !senha) {
      return res.status(400).json({ success: false, message: 'E-mail e senha são obrigatórios.' })
    }

    const [rows] = await pool.query(
      'SELECT id, email, senha_hash, nome FROM admin_users WHERE email = ?',
      [email.trim().toLowerCase()]
    )

    // Mensagem genérica de propósito, para não revelar se o e-mail existe
    if (!rows.length) {
      return res.status(401).json({ success: false, message: 'Credenciais inválidas.' })
    }

    const admin = rows[0]
    const senhaOk = await bcrypt.compare(senha, admin.senha_hash)

    if (!senhaOk) {
      return res.status(401).json({ success: false, message: 'Credenciais inválidas.' })
    }

    const token = jwt.sign(
      { type: 'admin', id: admin.id, email: admin.email },
      process.env.JWT_SECRET,
      { expiresIn: '12h' }
    )

    res.json({
      success: true,
      token,
      admin: { id: admin.id, email: admin.email, nome: admin.nome },
    })
  } catch (err) {
    console.error('[login]', err.message)
    res.status(500).json({ success: false, message: 'Erro ao autenticar.' })
  }
}

export async function me(req, res) {
  res.json({ success: true, admin: req.admin })
}