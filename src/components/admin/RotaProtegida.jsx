import { Navigate } from 'react-router-dom'
import { useAdminAuth } from '../../context/AdminAuthContext'

export default function RotaProtegida({ children }) {
  const { isAuthenticated } = useAdminAuth()

  if (!isAuthenticated) {
    return <Navigate to="/gestao/login" replace />
  }

  return children
}