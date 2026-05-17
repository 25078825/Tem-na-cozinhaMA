import { useState } from 'react'
import { CATEGORIAS, OCASIOES } from '../../data/mockData'

const OPCOES_TEMPO = [
  { label: 'Qualquer',    value: null    },
  { label: '≤ 30 min',    value: '30'    },
  { label: '≤ 1 hora',    value: '60'    },
  { label: '+ de 1 hora', value: 'mais'  },
]

const DIFICULDADE_CONFIG = {
  'Fácil':   { inactive: 'border-green-200  text-green-700  bg-green-50',  active: 'bg-green-500  border-green-500  text-white shadow-sm shadow-green-200'  },
  'Média':   { inactive: 'border-amber-200 text-amber-700 bg-amber-50', active: 'bg-amber-500 border-amber-500 text-white shadow-sm shadow-amber-200' },
  'Difícil': { inactive: 'border-red-200    text-red-700    bg-red-50',    active: 'bg-red-500    border-red-500    text-white shadow-sm shadow-red-200'    },
}

function ChevronIcon({ open }) {
  return (
    <svg className={`w-4 h-4 text-gray-400 transition-transform duration-200
                     ${open ? 'rotate-180' : ''}`}
         fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 9l-7 7-7-7" />
    </svg>
  )
}

function Section({ label, children, defaultOpen = true }) {
  const [open, setOpen] = useState(defaultOpen)
  return (
    <div className="border-b border-gray-100 last:border-0 pb-4 last:pb-0">
      <button
        onClick={() => setOpen(v => !v)}
        className="w-full flex items-center justify-between py-1 mb-2.5 group"
      >
        <p className="text-[11px] font-bold text-gray-500 uppercase tracking-widest
                      group-hover:text-gray-700 transition-colors">
          {label}
        </p>
        <ChevronIcon open={open} />
      </button>
      {open && <div className="animate-fade-in">{children}</div>}
    </div>
  )
}

function Toggle({ emoji, label, desc, active, onChange }) {
  return (
    <button
      onClick={() => onChange(!active)}
      className={`w-full flex items-center gap-3 px-3.5 py-3 rounded-xl
                  border text-left transition-all duration-200 ${
        active
          ? 'bg-amber-50 border-amber-200 shadow-sm shadow-amber-100'
          : 'bg-white border-gray-200 hover:border-amber-200 hover:bg-gray-50'
      }`}
    >
      <span className={`text-base flex-shrink-0 transition-all ${active ? '' : 'grayscale opacity-70'}`}>
        {emoji}
      </span>
      <div className="flex-1 min-w-0">
        <p className={`text-sm font-medium leading-tight ${active ? 'text-amber-700' : 'text-gray-700'}`}>
          {label}
        </p>
        <p className="text-[11px] text-gray-400 mt-0.5">{desc}</p>
      </div>
      <div className={`relative flex-shrink-0 w-9 h-5 rounded-full
                       transition-colors duration-200 ${active ? 'bg-amber-500' : 'bg-gray-200'}`}>
        <span className={`absolute top-0.5 w-4 h-4 bg-white rounded-full shadow-sm
                          transition-transform duration-200 ${active ? 'translate-x-4' : 'translate-x-0.5'}`} />
      </div>
    </button>
  )
}

export default function FiltrosPanel({
  filtros,
  onSetFiltro,
  onToggleDificuldade,
  onToggleOcasiao,
  onLimpar,
  temFiltrosAtivos,
}) {
  return (
    <div>
      {/* Header */}
      <div className="flex items-center justify-between mb-5">
        <h3 className="font-display font-semibold text-gray-800 text-base
                       flex items-center gap-2">
          <span>🎛️</span> Filtros
          {temFiltrosAtivos && (
            <span className="bg-amber-500 text-white text-[10px] font-bold
                             w-4 h-4 rounded-full flex items-center justify-center">
              ✓
            </span>
          )}
        </h3>
        {temFiltrosAtivos && (
          <button
            onClick={onLimpar}
            className="text-xs text-red-400 hover:text-red-600 font-medium
                       transition-colors flex items-center gap-1"
          >
            <svg className="w-3 h-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5}
                    d="M6 18L18 6M6 6l12 12" />
            </svg>
            Limpar
          </button>
        )}
      </div>

      <div className="space-y-4">       
        <Section label="Tempo de preparo">
          <div className="flex flex-wrap gap-1.5">
            {OPCOES_TEMPO.map(opt => (
              <button
                key={String(opt.value)}
                onClick={() => onSetFiltro('tempo', filtros.tempo === opt.value ? null : opt.value)}
                className={filtros.tempo === opt.value ? 'chip-active' : 'chip-default'}
              >
                {opt.label}
              </button>
            ))}
          </div>
        </Section>

        <Section label="Dificuldade">
          <div className="flex gap-1.5">
            {Object.entries(DIFICULDADE_CONFIG).map(([nivel, cfg]) => {
              const isActive = filtros.dificuldade.includes(nivel)
              return (
                <button
                  key={nivel}
                  onClick={() => onToggleDificuldade(nivel)}
                  className={`flex-1 text-xs py-2 rounded-xl border font-semibold
                              transition-all duration-150 ${isActive ? cfg.active : `${cfg.inactive} hover:opacity-90`}`}
                >
                  {nivel}
                </button>
              )
            })}
          </div>
        </Section>

        <Section label="Tipo de prato">
          <div className="flex flex-wrap gap-1.5">
            {CATEGORIAS.map(cat => (
              <button
                key={cat}
                onClick={() => onSetFiltro('categoria', cat)}
                className={filtros.categoria === cat ? 'chip-active' : 'chip-default'}
              >
                {cat}
              </button>
            ))}
          </div>
        </Section>

        <Section label="Ocasião / Época" defaultOpen={false}>
          <div className="flex flex-wrap gap-1.5">
            {OCASIOES.map(oc => (
              <button
                key={oc}
                onClick={() => onToggleOcasiao(oc)}
                className={filtros.ocasioes.includes(oc) ? 'chip-active' : 'chip-default'}
              >
                {oc}
              </button>
            ))}
          </div>
        </Section>

        <Section label="Características" defaultOpen={false}>
          <div className="space-y-2">
            <Toggle
              emoji="⚡"
              label="Receita rápida"
              desc="Pronta em até 30 minutos"
              active={filtros.rapida}
              onChange={v => onSetFiltro('rapida', v)}
            />
            <Toggle
              emoji="🎉"
              label="Típica de festa"
              desc="Ideal para servir em celebrações"
              active={filtros.tipicaFesta}
              onChange={v => onSetFiltro('tipicaFesta', v)}
            />
            <Toggle
              emoji="🌱"
              label="Vegano"
              desc="Sem nenhum ingrediente de origem animal"
              active={filtros.vegano}
              onChange={v => onSetFiltro('vegano', v)}
            />
            <Toggle
              emoji="🥗"
              label="Diet / Diabético"
              desc="Adequada para quem controla o açúcar"
              active={filtros.diet}
              onChange={v => onSetFiltro('diet', v)}
            />
          </div>
        </Section>

      </div>
    </div>
  )
}