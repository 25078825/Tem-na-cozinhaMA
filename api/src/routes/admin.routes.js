import { Router } from 'express'
import { requireAuth } from '../middlewares/auth.middleware.js'
import * as ReceitasAdmin from '../controllers/admin/receitas.admin.controller.js'
import * as IngredientesAdmin from '../controllers/admin/ingredientes.admin.controller.js'
import * as SugestoesAdmin from '../controllers/admin/sugestoes.admin.controller.js'

const router = Router()

router.use(requireAuth) // tudo abaixo exige login

// Receitas
router.get('/receitas',           ReceitasAdmin.listar)
router.get('/receitas/:id',       ReceitasAdmin.buscarPorId)
router.post('/receitas',          ReceitasAdmin.criar)
router.put('/receitas/:id',       ReceitasAdmin.atualizar)
router.delete('/receitas/:id',    ReceitasAdmin.excluir)

// Ingredientes
router.get('/ingredientes',        IngredientesAdmin.listar)
router.post('/ingredientes',       IngredientesAdmin.criar)
router.put('/ingredientes/:id',    IngredientesAdmin.atualizar)
router.delete('/ingredientes/:id', IngredientesAdmin.excluir)

// Sugestões
router.get('/sugestoes',                SugestoesAdmin.listar)
router.post('/sugestoes/:id/aceitar',   SugestoesAdmin.aceitarPeloPainel)
router.post('/sugestoes/:id/rejeitar',  SugestoesAdmin.rejeitar)

export default router