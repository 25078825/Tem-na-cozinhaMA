import { Routes, Route, Navigate } from 'react-router-dom'
import Layout          from './components/layout/Layout'
import Home            from './pages/Home'
import BuscarReceitas  from './pages/BuscarReceitas'
import SecoesEspeciais from './pages/SecoesEspeciais'
import SugerirReceita  from './pages/SugerirReceita'
import ScrollToTop     from './components/ScrollToTop'
import { TimerProvider } from './context/TimerContext'
import { AdminAuthProvider } from './context/AdminAuthContext'
import RotaProtegida    from './components/admin/RotaProtegida'
import Login            from './pages/admin/Login'
import PainelLayout     from './pages/admin/PainelLayout'
import Receitas         from './pages/admin/Receitas'
import Ingredientes     from './pages/admin/Ingredientes'
import Sugestoes        from './pages/admin/Sugestoes'

export default function App() {
  return (
    <AdminAuthProvider>
      <TimerProvider>
        <ScrollToTop />
        <Routes>
          <Route path="/" element={<Layout />}>
            <Route index             element={<Home />}            />
            <Route path="buscar"     element={<BuscarReceitas />}  />
            <Route path="secoes"     element={<SecoesEspeciais />} />
            <Route path="sugerir"    element={<SugerirReceita />}  />
          </Route>

          {/* Painel administrativo — rota oculta, sem link em nenhum menu */}
          <Route path="/gestao/login" element={<Login />} />
          <Route
            path="/gestao"
            element={
              <RotaProtegida>
                <PainelLayout />
              </RotaProtegida>
            }
          >
            <Route index                element={<Navigate to="receitas" replace />} />
            <Route path="receitas"      element={<Receitas />} />
            <Route path="ingredientes"  element={<Ingredientes />} />
            <Route path="sugestoes"     element={<Sugestoes />} />
          </Route>
        </Routes>
      </TimerProvider>
    </AdminAuthProvider>
  )
}