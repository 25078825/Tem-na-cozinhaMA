import { useState, useEffect } from 'react'
import { Link, NavLink, useNavigate, useLocation } from 'react-router-dom'

const NAV_LINKS = [
  { to: '/',        label: 'Início',          end: true  },
  { to: '/buscar',  label: 'Buscar Receitas', end: false },
  { to: '/secoes',  label: 'Seções',          end: false },
  { to: '/sugerir', label: 'Sugerir Receita', end: false },
]

export default function Header() {
  const [menuOpen, setMenuOpen] = useState(false)
  const navigate  = useNavigate()
  const location  = useLocation()

  /* fecha o menu ao mudar de rota */
  useEffect(() => { setMenuOpen(false) }, [location.pathname])

  /* bloqueia scroll do body enquanto menu aberto */
  useEffect(() => {
    document.body.style.overflow = menuOpen ? 'hidden' : ''
    return () => { document.body.style.overflow = '' }
  }, [menuOpen])

  const navClass = ({ isActive }) =>
    `px-4 py-2 rounded-lg text-sm font-medium transition-colors ${
      isActive
        ? 'bg-amber-100 text-amber-700'
        : 'text-gray-600 hover:text-amber-600 hover:bg-amber-50'
    }`

  return (
    <>
      <header className="bg-white border-b border-amber-100 sticky top-0 z-50 shadow-sm">
        <div className="container-page">
          <div className="flex items-center justify-between h-16">

            {/* Logo */}
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

            {/* Nav desktop */}
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

            {/* Botão hambúrguer */}
            <button
              className="md:hidden w-10 h-10 flex items-center justify-center rounded-xl
                         text-gray-500 hover:bg-amber-50 hover:text-amber-600 transition-colors"
              onClick={() => setMenuOpen(v => !v)}
              aria-label={menuOpen ? 'Fechar menu' : 'Abrir menu'}
            >
              <svg className="w-6 h-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                {menuOpen ? (
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                        d="M6 18L18 6M6 6l12 12" />
                ) : (
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                        d="M4 6h16M4 12h16M4 18h16" />
                )}
              </svg>
            </button>
          </div>
        </div>
      </header>

      {/* Overlay escuro */}
      {menuOpen && (
        <div
          className="fixed inset-0 bg-black/40 backdrop-blur-sm z-40 md:hidden"
          onClick={() => setMenuOpen(false)}
        />
      )}

      {/* Drawer mobile */}
      <div className={`fixed top-16 left-0 right-0 z-40 md:hidden
                       bg-white shadow-xl border-b border-amber-100
                       transition-all duration-300 ease-in-out
                       ${menuOpen ? 'translate-y-0 opacity-100' : '-translate-y-4 opacity-0 pointer-events-none'}`}>

        <nav className="container-page py-3">
          {NAV_LINKS.map(link => (
            <NavLink
              key={link.to}
              to={link.to}
              end={link.end}
              onClick={() => setMenuOpen(false)}
              className={({ isActive }) =>
                `flex items-center gap-3 px-4 py-3.5 rounded-xl text-sm font-medium
                 transition-colors w-full mb-1 ${
                   isActive
                     ? 'bg-amber-50 text-amber-700 border border-amber-200'
                     : 'text-gray-600 hover:bg-gray-50'
                 }`
              }
            >
              {link.label}
            </NavLink>
          ))}

          <div className="pt-2 pb-1">
            <button
              onClick={() => { navigate('/buscar'); setMenuOpen(false) }}
              className="w-full btn-primary py-3 text-sm font-semibold"
            >
              Descobrir Receitas
            </button>
          </div>
        </nav>
      </div>
    </>
  )
}
