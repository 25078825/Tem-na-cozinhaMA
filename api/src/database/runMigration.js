import { pool }  from './connection.js'
import { readFileSync } from 'fs'
import { fileURLToPath } from 'url'
import { dirname, join } from 'path'
import dotenv from 'dotenv'

dotenv.config()

const __dirname = dirname(fileURLToPath(import.meta.url))

async function run() {
  try {
    console.log('🔄 Criando tabelas...')
    const migration = readFileSync(
      join(__dirname, 'migrations/001_create_tables.sql'), 'utf8'
    )

    const statements = migration
      .split(';')
      .map(s => s.trim())
      .filter(s => s.length > 0)

    for (const sql of statements) {
      await pool.query(sql)
    }
    console.log('✅ Tabelas criadas.')

    console.log('🌱 Populando banco com receitas...')
    const seed = readFileSync(
      join(__dirname, 'seeds/receitas.sql'), 'utf8'
    )

    const seedStatements = seed
      .split(';')
      .map(s => s.trim())
      .filter(s => s.length > 0)

    for (const sql of seedStatements) {
      await pool.query(sql)
    }
    console.log('✅ Receitas inseridas.')

    console.log('\n🎉 Banco pronto para uso!')
  } catch (err) {
    console.error('❌ Erro na migration:', err.message)
  } finally {
    await pool.end()
    process.exit(0)
  }
}

run()