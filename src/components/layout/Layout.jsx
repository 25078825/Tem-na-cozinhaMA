import { Outlet } from 'react-router-dom'
import Header    from './Header'
import Footer    from './footer'
import MiniTimer from '../ui/MiniTimer'
import ModoGuiado from '../ui/ModoGuiado'
import { useTimer } from '../../context/TimerContext'

export default function Layout() {
  const { modoGuiadoAberto, receitaAtiva, fecharModoGuiado } = useTimer()

  return (
    <div className="min-h-screen flex flex-col bg-amber-50">
      <Header />
      <main className="flex-1">
        <Outlet />
      </main>
      <Footer />
      <MiniTimer />
      {modoGuiadoAberto && receitaAtiva && (
        <ModoGuiado receita={receitaAtiva} onFechar={fecharModoGuiado} />
      )}
    </div>
  )
}