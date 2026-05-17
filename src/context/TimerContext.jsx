import { createContext, useContext, useState, useEffect, useRef } from 'react'

const TimerContext = createContext(null)

export function useTimer() {
  return useContext(TimerContext)
}

export function TimerProvider({ children }) {
  const [totalSecs,        setTotalSecs]        = useState(5 * 60)
  const [rodando,          setRodando]          = useState(false)
  const [inputMin,         setInputMin]         = useState('5')
  const [minimizado,       setMinimizado]       = useState(false)
  const [visivel,          setVisivel]          = useState(false)
  const [receitaAtiva,     setReceitaAtiva]     = useState(null)
  const [modoGuiadoAberto, setModoGuiadoAberto] = useState(false)
  const configurado = useRef(5 * 60)
  const intervalRef = useRef(null)

  const horas    = Math.floor(totalSecs / 3600)
  const minutos  = Math.floor((totalSecs % 3600) / 60)
  const segundos = totalSecs % 60
  const pct      = configurado.current > 0
    ? Math.max(0, (totalSecs / configurado.current) * 100)
    : 0
  const acabou = totalSecs === 0 && configurado.current > 0
  const fmt    = (n) => String(n).padStart(2, '0')

  useEffect(() => {
    if (rodando) {
      intervalRef.current = setInterval(() => {
        setTotalSecs(s => {
          if (s <= 1) {
            setRodando(false)
            clearInterval(intervalRef.current)
            return 0
          }
          return s - 1
        })
      }, 1000)
    }
    return () => clearInterval(intervalRef.current)
  }, [rodando])

  function iniciar() {
    if (totalSecs === 0) return
    setRodando(true)
  }

  function pausar() { setRodando(false) }

  function zerar() {
    setRodando(false)
    clearInterval(intervalRef.current)
    const m = Math.max(1, Number(inputMin) || 5)
    configurado.current = m * 60
    setTotalSecs(m * 60)
    setInputMin(String(m))
  }

  function aplicarTempo() {
    if (rodando) return
    const m = Math.max(1, Number(inputMin) || 5)
    configurado.current = m * 60
    setTotalSecs(m * 60)
    setInputMin(String(m))
  }

  function abrirModoGuiado(receita) {
    if (!receitaAtiva || receitaAtiva.id !== receita.id) {
      setRodando(false)
      clearInterval(intervalRef.current)
      configurado.current = 5 * 60
      setTotalSecs(5 * 60)
      setInputMin('5')
    }
    setReceitaAtiva(receita)
    setModoGuiadoAberto(true)
    setVisivel(true)
    setMinimizado(false)
  }

  function fecharModoGuiado() {
    setModoGuiadoAberto(false)
  }

  function minimizar() {
    setMinimizado(true)
    setModoGuiadoAberto(false)
  }

  function expandir() {
    setMinimizado(false)
    setModoGuiadoAberto(true)
  }

  function fecharMini() {
    setMinimizado(false)
    setVisivel(false)
    setRodando(false)
    clearInterval(intervalRef.current)
    configurado.current = 5 * 60
    setTotalSecs(5 * 60)
    setInputMin('5')
    setReceitaAtiva(null)
  }

  const value = {
    totalSecs, horas, minutos, segundos, rodando, inputMin, setInputMin,
    iniciar, pausar, zerar, aplicarTempo,
    pct, acabou, fmt,
    minimizado, visivel,
    receitaAtiva, modoGuiadoAberto,
    abrirModoGuiado, fecharModoGuiado,
    minimizar, expandir, fecharMini,
  }

  return (
    <TimerContext.Provider value={value}>
      {children}
    </TimerContext.Provider>
  )
}
