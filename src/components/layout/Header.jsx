import { useState } from 'react'
import { Link, NavLink, useNavigate } from 'react-router-dom'

const NAV_LINKS = [
  { to: '/',       label: 'Início',         end: true  },
  { to: '/buscar', label: 'Buscar Receitas', end: false },
  { to: '/secoes', label: 'Seções',          end: false },
]

export default function Header() {
  const [menuOpen, setMenuOpen] = useState(false)
  const navigate = useNavigate()

  const navClass = ({ isActive }) =>
    `px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
      isActive
        ? 'bg-amber-100 text-amber-700'
        : 'text-gray-600 hover:text-amber-600 hover:bg-amber-50'
    }`

  return (
    <header className="bg-white border-b border-amber-100 sticky top-0 z-50 shadow-sm">
      <div className="container-page">
        <div className="flex items-center justify-between h-16">

          <Link to="/" className="flex items-center gap-2.5 group">
            <img
              src="/logo.svg"
              alt="Tem na Cozinha MA"
              className="w-10 h-10 drop-shadow-sm group-hover:scale-105 transition-transform duration-200"
            />
            <div className="flex flex-col leading-none">
              <span className="text-base font-bold text-gray-800 font-display">
                Tem na Cozinha
              </span>
              <span className="text-[10px] font-bold text-amber-500 tracking-widest uppercase">
                Maranhão
              </span>
            </div>
          </Link>

          <nav className="hidden md:flex items-center gap-1">
            {NAV_LINKS.map(link => (
              <NavLink key={link.to} to={link.to} end={link.end} className={navClass}>
                {link.label}
              </NavLink>
            ))}
            <button
              onClick={() => navigate('/buscar')}
              className="ml-3 btn-primary text-sm px-5 py-2"
            >
              Descobrir Receitas
            </button>
          </nav>

          <button
            className="md:hidden p-2 rounded-lg text-gray-500 hover:bg-amber-50
                       hover:text-amber-600 transition-colors"
            onClick={() => setMenuOpen(v => !v)}
            aria-label="Abrir menu"
          >
            {menuOpen ? (
              <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                      d="M6 18L18 6M6 6l12 12" />
              </svg>
            ) : (
              <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                      d="M4 6h16M4 12h16M4 18h16" />
              </svg>
            )}
          </button>
        </div>

        {menuOpen && (
          <div className="md:hidden border-t border-amber-100 py-3 space-y-1 pb-4">
            {NAV_LINKS.map(link => (
              <NavLink
                key={link.to} to={link.to} end={link.end}
                onClick={() => setMenuOpen(false)}
                className={navClass}
              >
                {link.label}
              </NavLink>
            ))}
            <div className="pt-2">
              <button
                onClick={() => { navigate('/buscar'); setMenuOpen(false) }}
                className="w-full btn-primary text-sm py-2.5"
              >
                Descobrir Receitas
              </button>
            </div>
          </div>
        )}
      </div>
    </header>
  )
}