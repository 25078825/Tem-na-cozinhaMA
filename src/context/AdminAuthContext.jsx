import { createContext, useContext, useState, useCallback } from 'react'
import { adminApi } from '../services/api'

const AdminAuthContext = createContext(null)

export function AdminAuthProvider({ children }) {
  const [token, setToken] = useState(() => localStorage.getItem('admin_token'))
  const [admin, setAdmin] = useState(null)

  const login = useCallback(async (email, senha) => {
    const resposta = await adminApi.login(email, senha)
    localStorage.setItem('admin_token', resposta.token)
    setToken(resposta.token)
    setAdmin(resposta.admin)
    return resposta
  }, [])

  const logout = useCallback(() => {
    localStorage.removeItem('admin_token')
    setToken(null)
    setAdmin(null)
  }, [])

  return (
    <AdminAuthContext.Provider value={{ token, admin, login, logout, isAuthenticated: Boolean(token) }}>
      {children}
    </AdminAuthContext.Provider>
  )
}

export function useAdminAuth() {
  const ctx = useContext(AdminAuthContext)
  if (!ctx) throw new Error('useAdminAuth precisa estar dentro de AdminAuthProvider')
  return ctx
}