import bcrypt from 'bcryptjs'
import dotenv from 'dotenv'
import { pool } from './connection.js'

dotenv.config()

// Uso: node src/database/createAdmin.js email@exemplo.com senha123 "Nome"
async function run() {
  const [email, senha, nome] = process.argv.slice(2)

  if (!email || !senha) {
    console.error('Uso: node src/database/createAdmin.js <email> <senha> [nome]')
    process.exit(1)
  }

  try {
    const hash = await bcrypt.hash(senha, 10)

    await pool.query(
      'INSERT INTO admin_users (email, senha_hash, nome) VALUES (?, ?, ?)',
      [email.trim().toLowerCase(), hash, nome || null]
    )

    console.log(`✅ Admin criado: ${email}`)
  } catch (err) {
    console.error('❌ Erro ao criar admin:', err.message)
  } finally {
    await pool.end()
    process.exit(0)
  }
}

run()