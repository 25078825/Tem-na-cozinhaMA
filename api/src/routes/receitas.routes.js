import { Router } from 'express'
import {
  listarReceitas,
  buscarReceitaPorId,
  buscarPorIngredientes,
} from '../controllers/receitas.controller.js'

const router = Router()

router.get('/',           listarReceitas)
router.get('/buscar',     buscarPorIngredientes)
router.get('/:id',        buscarReceitaPorId)

export default router