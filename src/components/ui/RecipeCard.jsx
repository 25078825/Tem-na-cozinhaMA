import { useMemo } from 'react'

const CATEGORY_STYLE = {
  'Prato Principal': {
    gradient: 'linear-gradient(145deg, #FFF8F0 0%, #FFE0B2 100%)',
    badge: 'bg-orange-100 text-orange-700',
    accent: '#FB923C',
  },
  'Entrada': {
    gradient: 'linear-gradient(145deg, #EFF6FF 0%, #BFDBFE 100%)',
    badge: 'bg-blue-100 text-blue-700',
    accent: '#60A5FA',
  },
  'Acompanhamento': {
    gradient: 'linear-gradient(145deg, #F0FDF4 0%, #BBF7D0 100%)',
    badge: 'bg-green-100 text-green-700',
    accent: '#4ADE80',
  },
  'Sobremesa': {
    gradient: 'linear-gradient(145deg, #FFF1F2 0%, #FECDD3 100%)',
    badge: 'bg-pink-100 text-pink-700',
    accent: '#FB7185',
  },
}

const DEFAULT_STYLE = {
  gradient: 'linear-gradient(145deg, #F9FAFB 0%, #F3F4F6 100%)',
  badge: 'bg-gray-100 text-gray-600',
  accent: '#9CA3AF',
}

const DIFFICULTY_STYLE = {
  'Fácil':   'bg-green-100  text-green-700  border-green-200',
  'Média':   'bg-yellow-100 text-yellow-700 border-yellow-200',
  'Difícil': 'bg-red-100    text-red-700    border-red-200',
}

export default function RecipeCard({ receita, ingredientesUsuario = [], onClick }) {
  const catStyle = CATEGORY_STYLE[receita.categoria] ?? DEFAULT_STYLE

  const match = useMemo(() => {
    if (!ingredientesUsuario.length) return null
    const total     = receita.ingredientes.length
    const possuidos = receita.ingredientes.filter(ing =>
      ingredientesUsuario.some(u => u.toLowerCase() === ing.toLowerCase())
    ).length
    const faltando             = total - possuidos
    const pct                  = Math.round((possuidos / total) * 100)
    const ingredientesFaltando = receita.ingredientes.filter(ing =>
      !ingredientesUsuario.some(u => u.toLowerCase() === ing.toLowerCase())
    )
    return { possuidos, faltando, pct, ingredientesFaltando, total }
  }, [receita, ingredientesUsuario])

  const cardBorder =
    !match              ? 'border-gray-100'
    : match.pct === 100 ? 'border-green-200 ring-1 ring-green-100'
    : match.faltando <= 2 ? 'border-yellow-200 ring-1 ring-yellow-100'
    :                     'border-gray-100'

  const statusBadge =
    !match                 ? null
    : match.pct === 100    ? { label: '✓ Você tem tudo',               cls: 'bg-green-500  text-white' }
    : match.faltando === 1 ? { label: 'Falta 1 ingrediente',           cls: 'bg-yellow-500 text-white' }
    : match.faltando <= 3  ? { label: `Faltam ${match.faltando} ingredientes`, cls: 'bg-orange-500 text-white' }
    :                        { label: `${match.possuidos}/${match.total} ingredientes`, cls: 'bg-gray-600 text-white' }

  const barColor =
    !match              ? ''
    : match.pct === 100 ? 'bg-green-500'
    : match.pct >= 60   ? 'bg-yellow-500'
    :                     'bg-orange-400'

  return (
    <article
      onClick={() => onClick?.(receita)}
      className={`group relative bg-white rounded-2xl border overflow-hidden
                  shadow-sm hover:shadow-xl hover:-translate-y-1
                  transition-all duration-300 flex flex-col cursor-pointer
                  ${cardBorder}`}
    >
      {/* ── Imagem ────────────────────────────────────── */}
      <div className="h-44 relative flex items-center justify-center flex-shrink-0 overflow-hidden"
           style={{ background: catStyle.gradient }}>

        {/* Círculo decorativo de fundo */}
        <div className="absolute inset-0 flex items-center justify-center opacity-[0.06]"
             style={{ transform: 'scale(1.5)' }}>
          <span className="text-[180px] leading-none select-none pointer-events-none">
            {receita.emoji}
          </span>
        </div>

        {/* Emoji principal */}
        <span className="relative text-6xl select-none
                         group-hover:scale-110 transition-transform duration-500
                         drop-shadow-sm z-10">
          {receita.emoji}
        </span>

        {/* Badge categoria */}
        <span className={`absolute top-3 left-3 text-[11px] font-semibold
                          px-2.5 py-1 rounded-full backdrop-blur-sm ${catStyle.badge}`}>
          {receita.categoria}
        </span>

        {/* Badge status de match */}
        {statusBadge && (
          <span className={`absolute top-3 right-3 text-[11px] font-bold
                            px-2.5 py-1 rounded-full shadow-md ${statusBadge.cls}`}>
            {statusBadge.label}
          </span>
        )}

        {/* Feature badges */}
        <div className="absolute bottom-3 left-3 flex items-center gap-1.5">
          {receita.rapida && (
            <span className="text-[11px] font-semibold px-2 py-1 rounded-full
                             bg-white/90 backdrop-blur-sm text-amber-600
                             border border-amber-200/70 shadow-sm">
              ⚡ Rápida
            </span>
          )}
          {receita.tipicaFesta && (
            <span className="text-[11px] font-semibold px-2 py-1 rounded-full
                             bg-white/90 backdrop-blur-sm text-purple-600
                             border border-purple-200/70 shadow-sm">
              🎉 Festa
            </span>
          )}
        </div>

        {/* CTA hover overlay */}
        <div className="absolute inset-0 bg-black/0 group-hover:bg-black/10
                        transition-colors duration-300 flex items-center justify-center">
          <span className="opacity-0 group-hover:opacity-100 transition-opacity duration-300
                           bg-white text-gray-800 text-xs font-semibold px-4 py-1.5
                           rounded-full shadow-lg flex items-center gap-1.5">
            Ver receita
            <svg className="w-3.5 h-3.5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5}
                    d="M9 5l7 7-7 7" />
            </svg>
          </span>
        </div>
      </div>

      {/* ── Corpo ─────────────────────────────────────── */}
      <div className="p-4 flex flex-col gap-2.5 flex-1">

        <h3 className="font-display font-semibold text-gray-900 text-[15px]
                       leading-snug group-hover:text-orange-600 transition-colors
                       line-clamp-2">
          {receita.nome}
        </h3>

        <p className="text-[12px] text-gray-500 line-clamp-2 leading-relaxed">
          {receita.descricao}
        </p>

        {/* Meta */}
        <div className="flex items-center gap-2 text-[11px] text-gray-500 flex-wrap pt-0.5">
          <span className="flex items-center gap-1 font-medium">
            <svg className="w-3.5 h-3.5 text-gray-400" fill="none" viewBox="0 0 24 24"
                 stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                    d="M12 8v4l3 3m6-3a9 9 0 11-18 0 9 9 0 0118 0z" />
            </svg>
            {receita.tempo}
          </span>
          <span className="text-gray-200">•</span>
          <span className="flex items-center gap-1 font-medium">
            <svg className="w-3.5 h-3.5 text-gray-400" fill="none" viewBox="0 0 24 24"
                 stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                    d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857
                       M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857
                       m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0z" />
            </svg>
            {receita.porcoes} porções
          </span>
          <span className={`ml-auto text-[11px] font-semibold px-2.5 py-0.5
                            rounded-full border ${DIFFICULTY_STYLE[receita.dificuldade]
                              ?? 'bg-gray-100 text-gray-600 border-gray-200'}`}>
            {receita.dificuldade}
          </span>
        </div>

        {/* Ocasiões */}
        {receita.ocasioes?.length > 0 && (
          <div className="flex flex-wrap gap-1">
            {receita.ocasioes.slice(0, 2).map(oc => (
              <span key={oc}
                    className="text-[10px] font-medium px-2 py-0.5 rounded-full
                               bg-gray-100 text-gray-500">
                {oc}
              </span>
            ))}
            {receita.ocasioes.length > 2 && (
              <span className="text-[10px] font-medium px-2 py-0.5 rounded-full
                               bg-gray-100 text-gray-400">
                +{receita.ocasioes.length - 2}
              </span>
            )}
          </div>
        )}

        <div className="flex-1" />

        {/* ── Match ───────────────────────────────────── */}
        {match && (
          <div className="border-t border-gray-100 pt-3 mt-1 space-y-2.5">

            {/* Barra */}
            <div>
              <div className="flex justify-between items-center mb-1.5">
                <span className="text-[10px] font-bold text-gray-400 uppercase tracking-widest">
                  Ingredientes
                </span>
                <span className={`text-xs font-bold ${
                  match.pct === 100 ? 'text-green-600'
                  : match.pct >= 60  ? 'text-yellow-600'
                  :                   'text-orange-500'
                }`}>
                  {match.possuidos}/{match.total}
                </span>
              </div>
              <div className="h-1.5 bg-gray-100 rounded-full overflow-hidden">
                <div
                  className={`h-full rounded-full transition-all duration-700 ${barColor}`}
                  style={{ width: `${match.pct}%` }}
                />
              </div>
            </div>

            {/* Faltando */}
            {match.ingredientesFaltando.length > 0 && (
              <div className="flex flex-wrap gap-1">
                {match.ingredientesFaltando.slice(0, 3).map(ing => (
                  <span key={ing}
                        className="text-[10px] font-medium px-2 py-0.5 rounded-full
                                   bg-red-50 text-red-500 border border-red-100">
                    {ing}
                  </span>
                ))}
                {match.ingredientesFaltando.length > 3 && (
                  <span className="text-[10px] font-medium px-2 py-0.5 rounded-full
                                   bg-gray-100 text-gray-400">
                    +{match.ingredientesFaltando.length - 3}
                  </span>
                )}
              </div>
            )}
          </div>
        )}
      </div>
    </article>
  )
}