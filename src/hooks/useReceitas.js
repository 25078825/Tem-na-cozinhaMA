import { useState, useEffect } from 'react'
import { api } from '../services/api'

function normalizar(r) {
  const ingredientesRaw = Array.isArray(r.ingredientes) ? r.ingredientes : []
  return {
    ...r,
    rapida:                Boolean(r.rapida),
    tipicaFesta:           Boolean(r.tipica_festa),
    destaque:              Boolean(r.destaque),
    ocasioes:              Array.isArray(r.ocasioes) ? r.ocasioes : [],
    ingredientes:          ingredientesRaw.filter(i => !i.opcional).map(i => i.nome),
    ingredientesOpcionais: ingredientesRaw.filter(i =>  i.opcional).map(i => i.nome),
  }
}

export function useReceitas() {
  const [receitas, setReceitas] = useState([])
  const [loading,  setLoading]  = useState(true)
  const [error,    setError]    = useState(null)

  useEffect(() => {
    api.get('/receitas')
      .then(res => {
        setReceitas(res.data.map(normalizar))
      })
      .catch(err => {
        console.error('[useReceitas]', err.message)
        setError(err.message)
      })
      .finally(() => setLoading(false))
  }, [])

  return { receitas, loading, error }
}