import { NavLink, Outlet } from 'react-router-dom'
import { useAdminAuth } from '../../context/AdminAuthContext'

const abas = [
  { path: '/gestao/receitas',    label: 'Receitas' },
  { path: '/gestao/ingredientes', label: 'Ingredientes' },
  { path: '/gestao/sugestoes',    label: 'Sugestões' },
]

export default function PainelLayout() {
  const { logout } = useAdminAuth()

  return (
    <div className="min-h-screen bg-neutral-100">
      <header className="bg-white border-b border-neutral-200 px-6 py-4 flex items-center justify-between">
        <h1 className="font-bold text-lg text-neutral-800">Tem na Cozinha MA — Painel</h1>
        <button
          onClick={logout}
          className="text-sm text-neutral-500 hover:text-red-600 transition"
        >
          Sair
        </button>
      </header>

      <nav className="bg-white border-b border-neutral-200 px-6 flex gap-1">
        {abas.map((aba) => (
          <NavLink
            key={aba.path}
            to={aba.path}
            className={({ isActive }) =>
              `px-4 py-3 text-sm font-medium border-b-2 transition ${
                isActive
                  ? 'border-amber-600 text-amber-700'
                  : 'border-transparent text-neutral-500 hover:text-neutral-800'
              }`
            }
          >
            {aba.label}
          </NavLink>
        ))}
      </nav>

      <main className="p-6 max-w-5xl mx-auto">
        <Outlet />
      </main>
    </div>
  )
}