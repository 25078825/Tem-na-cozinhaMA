import mysql from 'mysql2/promise'
import dotenv from 'dotenv'

/* ── Carrega .env antes de ler process.env ─────────────── */
dotenv.config()

const {
  DB_HOST,
  DB_PORT,
  DB_USER,
  DB_PASSWORD,
  DB_NAME,
} = process.env

if (!DB_HOST || !DB_USER || !DB_NAME) {
  console.warn(
    '[DB] Variáveis de ambiente incompletas. ' +
    'Verifique DB_HOST, DB_USER e DB_NAME no arquivo .env.'
  )
}

export const pool = mysql.createPool({
  host:     DB_HOST,
  port:     DB_PORT ? Number(DB_PORT) : 3306,
  user:     DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
})

export async function testConnection() {
  try {
    const [rows] = await pool.query('SELECT 1 AS result')
    const ok = rows?.[0]?.result === 1
    if (ok) {
      console.log('✅ Conectado ao MySQL com sucesso.')
    }
    return ok
  } catch (error) {
    console.error('❌ Erro ao conectar ao MySQL:', error.message)
    throw error
  }
}