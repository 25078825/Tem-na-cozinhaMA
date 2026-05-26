import { Router } from 'express'
import {
  listarIngredientes,
  buscarIngrediente,
  receitasPorIngrediente,
} from '../controllers/ingredientes.controller.js'

const router = Router()

router.get('/',              listarIngredientes)
router.get('/buscar',        buscarIngrediente)
router.get('/:id/receitas',  receitasPorIngrediente)

export default router
