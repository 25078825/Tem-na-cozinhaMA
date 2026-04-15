import express         from 'express'
import cors            from 'cors'
import dotenv          from 'dotenv'
import { testConnection }   from './database/connection.js'
import receitasRoutes       from './routes/receitas.routes.js'
import ingredientesRoutes   from './routes/ingredientes.routes.js'

dotenv.config()

const app          = express()
const PORT         = process.env.PORT         || 3333
const FRONTEND_URL = process.env.FRONTEND_URL || 'http://localhost:5173'

app.use(cors({ origin: FRONTEND_URL }))
app.use(express.json())

/* ── Rotas ─────────────────────────────────────────────── */
app.get('/health', (req, res) => {
  res.json({
    status: 'ok',
    message: 'API Tem na Cozinha MA 🍲',
    timestamp: new Date().toISOString(),
  })
})

app.use('/receitas',     receitasRoutes)
app.use('/ingredientes', ingredientesRoutes)

/* ── 404 ───────────────────────────────────────────────── */
app.use((req, res) => {
  res.status(404).json({
    success: false,
    message: `Rota ${req.method} ${req.path} não encontrada.`,
  })
})

/* ── Inicialização ─────────────────────────────────────── */
async function start() {
  try {
    await testConnection()
    app.listen(PORT, () => {
      console.log(`✅ API Tem na Cozinha MA rodando em http://localhost:${PORT}`)
      console.log(`🌐 Front-end permitido: ${FRONTEND_URL}`)
    })
  } catch {
    console.error('❌ Não foi possível iniciar o servidor.')
    process.exit(1)
  }
}

start()