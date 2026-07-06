import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import { useAdminAuth } from '../../context/AdminAuthContext'

export default function Login() {
  const { login } = useAdminAuth()
  const navigate = useNavigate()
  const [email, setEmail] = useState('')
  const [senha, setSenha] = useState('')
  const [erro, setErro] = useState('')
  const [carregando, setCarregando] = useState(false)

  async function handleSubmit(e) {
    e.preventDefault()
    setErro('')
    setCarregando(true)
    try {
      await login(email, senha)
      navigate('/gestao')
    } catch (err) {
      setErro(err.message || 'Erro ao entrar.')
    } finally {
      setCarregando(false)
    }
  }

  return (
    <div className="min-h-screen flex items-center justify-center bg-neutral-100 px-4">
      <form
        onSubmit={handleSubmit}
        className="bg-white rounded-2xl shadow-md p-8 w-full max-w-sm space-y-4"
      >
        <h1 className="text-xl font-bold text-neutral-800">Painel administrativo</h1>

        <div className="space-y-1">
          <label className="text-sm text-neutral-600">E-mail</label>
          <input
            type="email"
            required
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            className="w-full border border-neutral-300 rounded-lg px-3 py-2 outline-none focus:ring-2 focus:ring-amber-500"
          />
        </div>

        <div className="space-y-1">
          <label className="text-sm text-neutral-600">Senha</label>
          <input
            type="password"
            required
            value={senha}
            onChange={(e) => setSenha(e.target.value)}
            className="w-full border border-neutral-300 rounded-lg px-3 py-2 outline-none focus:ring-2 focus:ring-amber-500"
          />
        </div>

        {erro && <p className="text-red-600 text-sm">{erro}</p>}

        <button
          type="submit"
          disabled={carregando}
          className="w-full bg-amber-600 hover:bg-amber-700 disabled:opacity-60 text-white font-semibold rounded-lg py-2 transition"
        >
          {carregando ? 'Entrando...' : 'Entrar'}
        </button>
      </form>
    </div>
  )
}