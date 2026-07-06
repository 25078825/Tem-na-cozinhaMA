import express         from 'express'
import cors            from 'cors'
import helmet          from 'helmet'
import dotenv          from 'dotenv'
import rateLimit       from 'express-rate-limit'
import { testConnection }   from './database/connection.js'
import receitasRoutes       from './routes/receitas.routes.js'
import ingredientesRoutes   from './routes/ingredientes.routes.js'
import sugestoesRoutes      from './routes/sugestoes.routes.js'
import authRoutes           from './routes/auth.routes.js'
import adminRoutes          from './routes/admin.routes.js'

dotenv.config()

const app          = express()
const PORT         = process.env.PORT         || 3333
const FRONTEND_URL = process.env.FRONTEND_URL || 'http://localhost:5173'

const corsOptions = {
  origin: (origin, callback) => {
    if (!origin) return callback(null, true)
    if (
      origin === FRONTEND_URL ||
      /^https:\/\/tem-na-cozinha-ma-2[\w-]*\.vercel\.app$/.test(origin)
    ) {
      callback(null, true)
    } else {
      callback(new Error('CORS não permitido'))
    }
  },
}

app.use(helmet())
app.use(cors(corsOptions))
app.use(express.json({ limit: '20kb' }))

const globalLimiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 200,
  standardHeaders: true,
  legacyHeaders: false,
  message: { success: false, message: 'Muitas requisições. Tente novamente em alguns minutos.' },
})

const sugestoesLimiter = rateLimit({
  windowMs: 60 * 60 * 1000,
  max: 5,
  standardHeaders: true,
  legacyHeaders: false,
  message: { success: false, message: 'Limite de sugestões atingido. Tente novamente em 1 hora.' },
})

app.use(globalLimiter)

app.get('/health', (req, res) => {
  res.json({ status: 'ok', timestamp: new Date().toISOString() })
})

const loginLimiter = rateLimit({
  windowMs: 15 * 60 * 1000,
  max: 10,
  standardHeaders: true,
  legacyHeaders: false,
  message: { success: false, message: 'Muitas tentativas de login. Tente novamente mais tarde.' },
})

app.use('/receitas',     receitasRoutes)
app.use('/ingredientes', ingredientesRoutes)
app.use('/sugestoes',    sugestoesLimiter, sugestoesRoutes)
app.use('/auth',         loginLimiter, authRoutes)
app.use('/admin',        adminRoutes)

app.use((req, res) => {
  res.status(404).json({ success: false, message: 'Rota não encontrada.' })
})

app.use((err, req, res, _next) => {
  console.error('[erro]', err.message)
  res.status(500).json({ success: false, message: 'Erro interno do servidor.' })
})

async function start() {
  try {
    await testConnection()
    app.listen(PORT, () => {
      console.log(`✅ API rodando em http://localhost:${PORT}`)
    })
  } catch {
    console.error('❌ Não foi possível iniciar o servidor.')
    process.exit(1)
  }
}

start()