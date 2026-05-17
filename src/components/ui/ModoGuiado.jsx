import { useState, useEffect, useCallback } from 'react'
import { useTimer } from '../../context/TimerContext'

function detectarIngredientesNoPasso(textoPasso, ingredientes) {
  const texto = textoPasso.toLowerCase()
  return ingredientes.filter(ing => texto.includes(ing.toLowerCase()))
}

function Temporizador({ onMinimizar }) {
  const { totalSecs, horas, minutos, segundos, rodando, inputMin, setInputMin,
          iniciar, pausar, zerar, aplicarTempo, pct, acabou, fmt } = useTimer()

  return (
    <div className="bg-gray-900 rounded-2xl p-4 space-y-3">
      <div className="flex items-center justify-between">
        <p className="text-[10px] font-bold text-gray-500 uppercase tracking-widest">
          ⏱ Temporizador
        </p>
        <button
          onClick={onMinimizar}
          className="text-gray-600 hover:text-gray-400 transition-colors p-1 rounded-lg hover:bg-gray-800"
        >
          <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M20 12H4" />
          </svg>
        </button>
      </div>

      <div className="text-center">
        <span className={`font-mono font-bold tracking-tight ${
          horas > 0 ? 'text-3xl' : 'text-4xl'
        } ${acabou ? 'text-red-400 animate-pulse' : rodando ? 'text-amber-400' : 'text-white'}`}>
          {horas > 0
            ? `${fmt(horas)}:${fmt(minutos)}:${fmt(segundos)}`
            : `${fmt(minutos)}:${fmt(segundos)}`}
        </span>
        {acabou && (
          <p className="text-xs text-red-400 font-semibold mt-1 animate-pulse">Tempo esgotado!</p>
        )}
      </div>

      <div className="h-1.5 bg-gray-700 rounded-full overflow-hidden">
        <div
          className={`h-full rounded-full transition-all duration-1000 ${pct > 30 ? 'bg-amber-500' : 'bg-red-500'}`}
          style={{ width: `${pct}%` }}
        />
      </div>

      <div className="flex items-center gap-2">
        <input
          type="number" min="1" max="600"
          value={inputMin}
          onChange={e => setInputMin(e.target.value)}
          onBlur={aplicarTempo}
          disabled={rodando}
          className="w-16 text-center text-sm bg-gray-800 border border-gray-700
                     text-white rounded-lg px-2 py-1.5 focus:outline-none
                     focus:ring-1 focus:ring-amber-500 disabled:opacity-40"
        />
        <span className="text-xs text-gray-400">min</span>
        <button onClick={aplicarTempo} disabled={rodando}
                className="text-xs text-amber-400 hover:text-amber-300 font-medium disabled:opacity-30 transition-colors">
          Aplicar
        </button>
      </div>

      <div className="flex gap-2">
        {!rodando ? (
          <button onClick={iniciar} disabled={totalSecs === 0}
                  className="flex-1 bg-amber-500 hover:bg-amber-400 disabled:opacity-40
                             text-white text-xs font-bold py-2 rounded-xl transition-colors">
            ▶ Iniciar
          </button>
        ) : (
          <button onClick={pausar}
                  className="flex-1 bg-yellow-500 hover:bg-yellow-400
                             text-white text-xs font-bold py-2 rounded-xl transition-colors">
            ⏸ Pausar
          </button>
        )}
        <button onClick={zerar}
                className="px-4 bg-gray-700 hover:bg-gray-600
                           text-gray-300 text-xs font-bold py-2 rounded-xl transition-colors">
          ↺ Zerar
        </button>
      </div>
    </div>
  )
}

function TimerOuBotao({ onMinimizar }) {
  const { minimizado, visivel, expandir } = useTimer()
  if (!visivel)     return (
    <button onClick={expandir}
            className="w-full text-xs text-gray-600 hover:text-gray-400 transition-colors
                       py-2 flex items-center justify-center gap-2">
      <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
              d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
      </svg>
      Abrir temporizador
    </button>
  )
  if (minimizado)   return (
    <button onClick={expandir}
            className="w-full text-xs text-gray-600 hover:text-gray-400 transition-colors
                       py-2 flex items-center justify-center gap-2">
      <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
              d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
      </svg>
      Temporizador minimizado
    </button>
  )
  return <Temporizador onMinimizar={onMinimizar} />
}

function ListaIngredientes({ ingredientes, ingDestacados }) {
  return (
    <ul className="space-y-1.5">
      {ingredientes.map(ing => {
        const destacado = ingDestacados.includes(ing)
        return (
          <li key={ing}
              className={`flex items-center gap-2.5 px-3 py-2 rounded-xl transition-all duration-300 ${
                destacado ? 'bg-amber-500/20 border border-amber-500/40' : 'border border-transparent'
              }`}>
            <span className={`w-2 h-2 rounded-full flex-shrink-0 transition-colors ${
              destacado ? 'bg-amber-400' : 'bg-gray-700'
            }`} />
            <span className={`text-sm transition-colors ${
              destacado ? 'text-amber-300 font-semibold' : 'text-gray-500'
            }`}>
              {ing}
            </span>
          </li>
        )
      })}
    </ul>
  )
}

function PainelPasso({ passoAtual, passo, passos, total, irPara, onFechar }) {
  return (
    <div className="flex-1 flex flex-col overflow-y-auto px-5 py-5 lg:px-10 lg:py-8">
      <div className="flex items-center gap-3 mb-5">
        <span className="w-10 h-10 rounded-2xl bg-amber-500 flex items-center justify-center
                         text-white font-black text-lg shadow-lg shadow-amber-500/30 flex-shrink-0">
          {passoAtual + 1}
        </span>
        <span className="text-gray-500 text-sm font-medium">
          de {total} {total === 1 ? 'passo' : 'passos'}
        </span>
      </div>

      <p className="text-white text-base sm:text-xl leading-relaxed font-medium flex-1">
        {passo}
      </p>

      <div className="flex justify-center gap-1.5 mt-6 flex-wrap">
        {passos.map((_, i) => (
          <button key={i} onClick={() => irPara(i)}
                  className={`rounded-full transition-all duration-300 ${
                    i === passoAtual  ? 'w-6 h-2.5 bg-amber-500'
                    : i < passoAtual ? 'w-2.5 h-2.5 bg-amber-800'
                    :                  'w-2.5 h-2.5 bg-gray-700 hover:bg-gray-600'
                  }`} />
        ))}
      </div>

      <div className="flex gap-3 mt-5">
        <button onClick={() => irPara(passoAtual - 1)} disabled={passoAtual === 0}
                className="flex-1 flex items-center justify-center gap-2
                           bg-gray-800 hover:bg-gray-700 disabled:opacity-30
                           text-white font-semibold py-3 rounded-2xl transition-colors text-sm">
          <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M15 19l-7-7 7-7" />
          </svg>
          Anterior
        </button>

        {passoAtual < total - 1 ? (
          <button onClick={() => irPara(passoAtual + 1)}
                  className="flex-1 flex items-center justify-center gap-2
                             bg-amber-500 hover:bg-amber-400 active:scale-[0.97]
                             text-white font-bold py-3 rounded-2xl
                             transition-all shadow-lg shadow-amber-500/30 text-sm">
            Próximo
            <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M9 5l7 7-7 7" />
            </svg>
          </button>
        ) : (
          <button onClick={onFechar}
                  className="flex-1 flex items-center justify-center gap-2
                             bg-green-500 hover:bg-green-400 active:scale-[0.97]
                             text-white font-bold py-3 rounded-2xl
                             transition-all shadow-lg shadow-green-500/30 text-sm">
            ✓ Concluir
          </button>
        )}
      </div>
    </div>
  )
}

export default function ModoGuiado({ receita, onFechar }) {
  const [passoAtual, setPassoAtual] = useState(0)
  const [abaMobile,  setAbaMobile]  = useState('passo')
  const { minimizar } = useTimer()

  const passos        = receita.modoPreparo ?? []
  const ingredientes  = receita.ingredientes ?? []
  const total         = passos.length
  const passo         = passos[passoAtual] ?? ''
  const ingDestacados = detectarIngredientesNoPasso(passo, ingredientes)
  const pct           = total > 1 ? (passoAtual / (total - 1)) * 100 : 100

  const irPara = useCallback((i) => {
    setPassoAtual(Math.max(0, Math.min(total - 1, i)))
  }, [total])

  useEffect(() => {
    function onKey(e) {
      if (e.key === 'ArrowRight' && passoAtual < total - 1) irPara(passoAtual + 1)
      if (e.key === 'ArrowLeft'  && passoAtual > 0)         irPara(passoAtual - 1)
      if (e.key === 'Escape') onFechar()
    }
    window.addEventListener('keydown', onKey)
    return () => window.removeEventListener('keydown', onKey)
  }, [passoAtual, total, irPara, onFechar])

  useEffect(() => {
    document.body.style.overflow = 'hidden'
    return () => { document.body.style.overflow = '' }
  }, [])

  const ABAS = [
    { id: 'passo',        icon: '📋', label: 'Passo'        },
    { id: 'timer',        icon: '⏱',  label: 'Timer'        },
    { id: 'ingredientes', icon: '🧂',  label: 'Ingredientes' },
  ]

  return (
    <div className="fixed inset-0 z-[60] bg-gray-950 flex flex-col">

      <div className="flex-shrink-0 flex items-center justify-between px-4 py-3 border-b border-gray-800">
        <div className="flex items-center gap-3 min-w-0">
          <span className="text-2xl flex-shrink-0">{receita.emoji}</span>
          <div className="min-w-0">
            <p className="text-white font-semibold text-sm truncate">{receita.nome}</p>
            <p className="text-gray-500 text-xs">Modo guiado</p>
          </div>
        </div>
        <button onClick={onFechar}
                className="w-9 h-9 flex items-center justify-center rounded-xl
                           bg-gray-800 hover:bg-gray-700 text-gray-400 hover:text-white
                           transition-colors flex-shrink-0">
          <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      </div>

      <div className="flex-shrink-0 h-1 bg-gray-800">
        <div className="h-full bg-amber-500 transition-all duration-500" style={{ width: `${pct}%` }} />
      </div>

      {/* Desktop */}
      <div className="hidden lg:flex flex-1 overflow-hidden">
        <PainelPasso
          passoAtual={passoAtual} passo={passo} passos={passos}
          total={total} irPara={irPara} onFechar={onFechar}
        />
        <div className="flex-shrink-0 w-72 xl:w-80 border-l border-gray-800 flex flex-col overflow-hidden">
          <div className="p-4 border-b border-gray-800 flex-shrink-0">
            <TimerOuBotao onMinimizar={minimizar} />
          </div>
          <div className="flex-1 overflow-y-auto p-4">
            <p className="text-[10px] font-bold text-gray-500 uppercase tracking-widest mb-3">
              🧂 Ingredientes
            </p>
            <ListaIngredientes ingredientes={ingredientes} ingDestacados={ingDestacados} />
          </div>
        </div>
      </div>

      {/* Mobile: abas */}
      <div className="flex lg:hidden flex-1 overflow-hidden flex-col">
        <div className="flex-1 overflow-hidden flex flex-col">
          {abaMobile === 'passo' && (
            <PainelPasso
              passoAtual={passoAtual} passo={passo} passos={passos}
              total={total} irPara={irPara} onFechar={onFechar}
            />
          )}
          {abaMobile === 'timer' && (
            <div className="flex-1 overflow-y-auto p-4">
              <TimerOuBotao onMinimizar={minimizar} />
            </div>
          )}
          {abaMobile === 'ingredientes' && (
            <div className="flex-1 overflow-y-auto p-4">
              <ListaIngredientes ingredientes={ingredientes} ingDestacados={ingDestacados} />
            </div>
          )}
        </div>

        <div className="flex-shrink-0 flex border-t border-gray-800 bg-gray-900">
          {ABAS.map(aba => (
            <button
              key={aba.id}
              onClick={() => setAbaMobile(aba.id)}
              className={`flex-1 flex flex-col items-center justify-center py-2.5 gap-0.5
                          text-[10px] font-semibold transition-colors ${
                abaMobile === aba.id
                  ? 'text-amber-400 border-t-2 border-amber-400 -mt-px'
                  : 'text-gray-600 hover:text-gray-400'
              }`}
            >
              <span className="text-base leading-none">{aba.icon}</span>
              {aba.label}
            </button>
          ))}
        </div>
      </div>
    </div>
  )
}
