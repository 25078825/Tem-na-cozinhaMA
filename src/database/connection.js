// src/database/connection.js
import mysql from 'mysql2/promise'

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

/**
 * Pool de conexões MySQL reutilizável em toda a API.
 * Usar pool é a prática recomendada em aplicações web.[web:44][web:45]
 */
export const pool = mysql.createPool({
  host: DB_HOST,
  port: DB_PORT ? Number(DB_PORT) : 3306,
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME,
  waitForConnections: true,
  connectionLimit: 10,
  maxIdle: 10,
  idleTimeout: 60000,
  queueLimit: 0,
})

/**
 * Função utilitária para testar conexão manualmente.
 * Pode ser usada em scripts ou em um endpoint de health DB.
 */
export async function testConnection() {
  try {
    const [rows] = await pool.query('SELECT 1 AS result')
    const ok = rows?.[0]?.result === 1
    if (ok) {
      console.log('✅ Conectado ao MySQL com sucesso.')
    } else {
      console.warn('⚠️ Resposta inesperada do MySQL:', rows)
    }
    return ok
  } catch (error) {
    console.error('❌ Erro ao conectar ao MySQL:', error.message)
    throw error
  }
}