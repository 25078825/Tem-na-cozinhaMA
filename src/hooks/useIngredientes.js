import { useState, useEffect } from 'react'
import { api } from '../services/api'

export function useIngredientes() {
  const [ingredientes, setIngredientes] = useState([])
  const [loading,      setLoading]      = useState(true)
  const [error,        setError]        = useState(null)

  useEffect(() => {
    api.get('/ingredientes')
      .then(res => setIngredientes(res.data.map(i => i.nome)))
      .catch(err => {
        console.error('[useIngredientes]', err.message)
        setError(err.message)
      })
      .finally(() => setLoading(false))
  }, [])

  return { ingredientes, loading, error }
}