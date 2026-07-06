import { Router } from 'express'
import { sugerirReceita } from '../controllers/sugestoes.controller.js'
import { aceitarPorToken } from '../controllers/admin/sugestoes.admin.controller.js'

const router = Router()

router.post('/', sugerirReceita)

// Link clicado direto do e-mail (não exige login, mas exige token assinado)
router.get('/:id/aceitar-por-email', aceitarPorToken)

export default router