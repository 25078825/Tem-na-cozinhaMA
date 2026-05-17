import { useTimer } from '../../context/TimerContext'

export default function MiniTimer() {
  const { horas, minutos, segundos, rodando, iniciar, pausar, acabou, fmt, pct,
          minimizado, visivel, expandir, fecharMini } = useTimer()

  if (!visivel || !minimizado) return null

  return (
    <div className="fixed bottom-5 right-5 z-[70] flex items-center gap-2
                    bg-gray-900 border border-gray-700 rounded-2xl shadow-2xl
                    px-3 py-2.5 animate-slide-up">

      <div className="h-7 w-7 relative flex-shrink-0">
        <svg className="w-7 h-7 -rotate-90" viewBox="0 0 28 28">
          <circle cx="14" cy="14" r="11" fill="none" stroke="#374151" strokeWidth="2.5" />
          <circle
            cx="14" cy="14" r="11" fill="none"
            stroke={acabou ? '#f87171' : pct > 30 ? '#f59e0b' : '#ef4444'}
            strokeWidth="2.5"
            strokeDasharray={`${2 * Math.PI * 11}`}
            strokeDashoffset={`${2 * Math.PI * 11 * (1 - pct / 100)}`}
            strokeLinecap="round"
            className="transition-all duration-1000"
          />
        </svg>
      </div>

      <span className={`font-mono font-bold tabular-nums ${
        horas > 0 ? 'text-xs' : 'text-sm'
      } ${acabou ? 'text-red-400 animate-pulse' : rodando ? 'text-amber-400' : 'text-white'}`}>
        {horas > 0
          ? `${fmt(horas)}:${fmt(minutos)}:${fmt(segundos)}`
          : `${fmt(minutos)}:${fmt(segundos)}`}
      </span>

      <button
        onClick={rodando ? pausar : iniciar}
        disabled={acabou}
        className="w-6 h-6 flex items-center justify-center text-gray-400
                   hover:text-white transition-colors disabled:opacity-30"
      >
        {rodando ? (
          <svg className="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
            <path d="M6 19h4V5H6v14zm8-14v14h4V5h-4z" />
          </svg>
        ) : (
          <svg className="w-4 h-4" fill="currentColor" viewBox="0 0 24 24">
            <path d="M8 5v14l11-7z" />
          </svg>
        )}
      </button>

      <button
        onClick={expandir}
        className="w-6 h-6 flex items-center justify-center text-gray-400
                   hover:text-white transition-colors"
        title="Expandir"
      >
        <svg className="w-3.5 h-3.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                d="M4 8V4m0 0h4M4 4l5 5m11-1V4m0 0h-4m4 0l-5 5M4 16v4m0 0h4m-4 0l5-5m11 5l-5-5m5 5v-4m0 4h-4" />
        </svg>
      </button>

      <button
        onClick={fecharMini}
        className="w-6 h-6 flex items-center justify-center text-gray-600
                   hover:text-gray-300 transition-colors"
        title="Fechar timer"
      >
        <svg className="w-3.5 h-3.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                d="M6 18L18 6M6 6l12 12" />
        </svg>
      </button>
    </div>
  )
}
