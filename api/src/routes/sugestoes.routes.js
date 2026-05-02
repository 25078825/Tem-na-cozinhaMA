import { Router } from 'express'
import { sugerirReceita } from '../controllers/sugestoes.controller.js'

const router = Router()

router.post('/', sugerirReceita)

export default router
