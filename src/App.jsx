import { Routes, Route } from 'react-router-dom'
import Layout          from './components/layout/Layout'
import Home            from './pages/Home'
import BuscarReceitas  from './pages/BuscarReceitas'
import SecoesEspeciais from './pages/SecoesEspeciais'

export default function App() {
  return (
    <Routes>
      <Route path="/" element={<Layout />}>
        <Route index             element={<Home />}            />
        <Route path="buscar"     element={<BuscarReceitas />}  />
        <Route path="secoes"     element={<SecoesEspeciais />} />
      </Route>
    </Routes>
  )
}