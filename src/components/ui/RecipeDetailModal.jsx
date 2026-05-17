import { useEffect, useCallback } from 'react'
import { useTimer } from '../../context/TimerContext'

const CATEGORY_GRADIENT = {
  'Prato Principal': 'linear-gradient(135deg, #FFF3E0 0%, #FFE0B2 100%)',
  'Entrada':         'linear-gradient(135deg, #E3F2FD 0%, #BBDEFB 100%)',
  'Acompanhamento':  'linear-gradient(135deg, #E8F5E9 0%, #C8E6C9 100%)',
  'Sobremesa':       'linear-gradient(135deg, #FCE4EC 0%, #F8BBD0 100%)',
}

const CATEGORY_BADGE = {
  'Prato Principal': 'bg-amber-100 text-amber-700',
  'Entrada':         'bg-blue-100   text-blue-700',
  'Acompanhamento':  'bg-green-100  text-green-700',
  'Sobremesa':       'bg-pink-100   text-pink-700',
}

const DIFFICULTY_STYLE = {
  'Fácil':   'bg-green-100  text-green-700',
  'Média':   'bg-amber-100 text-amber-700',
  'Difícil': 'bg-red-100    text-red-700',
}

function InfoStat({ icon, label, value }) {
  return (
    <div className="flex-1 flex flex-col items-center py-1 px-2">
      <span className="text-base mb-0.5">{icon}</span>
      <span className="text-[10px] text-gray-400 uppercase tracking-wider">{label}</span>
      <span className="text-sm font-semibold text-gray-700 mt-0.5 text-center">{value}</span>
    </div>
  )
}

function SectionTitle({ icon, children }) {
  return (
    <div className="flex items-center gap-2">
      <span className="text-lg">{icon}</span>
      <h3 className="font-display font-semibold text-gray-800 text-base">
        {children}
      </h3>
    </div>
  )
}

function IngredientItem({ nome, possui, temIngredientes }) {
  if (!temIngredientes) {
    return (
      <li className="flex items-center gap-3 py-2.5 px-3.5 rounded-xl
                     bg-gray-50 border border-gray-100">
        <span className="w-1.5 h-1.5 rounded-full bg-amber-400 flex-shrink-0" />
        <span className="text-sm text-gray-700">{nome}</span>
      </li>
    )
  }

  return (
    <li className={`flex items-center gap-3 py-2.5 px-3.5 rounded-xl border ${
      possui ? 'bg-green-50 border-green-100' : 'bg-red-50 border-red-100'
    }`}>
      <span className={`w-5 h-5 rounded-full flex items-center justify-center
                        flex-shrink-0 shadow-sm ${possui ? 'bg-green-500' : 'bg-red-400'}`}>
        {possui ? (
          <svg className="w-3 h-3 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M5 13l4 4L19 7" />
          </svg>
        ) : (
          <svg className="w-3 h-3 text-white" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M6 18L18 6M6 6l12 12" />
          </svg>
        )}
      </span>
      <span className={`text-sm ${possui ? 'text-green-800 font-medium' : 'text-red-600'}`}>
        {nome}
      </span>
      {!possui && (
        <span className="ml-auto text-[10px] font-medium text-red-400 bg-white
                         border border-red-100 px-2 py-0.5 rounded-full flex-shrink-0">
          falta
        </span>
      )}
    </li>
  )
}

export default function RecipeDetailModal({ receita, ingredientesUsuario = [], onClose }) {
  const { abrirModoGuiado } = useTimer()

  const handleKeyDown = useCallback((e) => {
    if (e.key === 'Escape') onClose()
  }, [onClose])

  useEffect(() => {
    document.addEventListener('keydown', handleKeyDown)
    document.body.style.overflow = 'hidden'
    return () => {
      document.removeEventListener('keydown', handleKeyDown)
      document.body.style.overflow = ''
    }
  }, [handleKeyDown])

  if (!receita) return null

  const gradient        = CATEGORY_GRADIENT[receita.categoria] ?? 'linear-gradient(135deg, #F5F5F5, #EEEEEE)'
  const temIngredientes = ingredientesUsuario.length > 0

  const ingredientesStatus = receita.ingredientes.map(ing => ({
    nome:   ing,
    possui: temIngredientes && ingredientesUsuario.some(
      u => u.toLowerCase() === ing.toLowerCase()
    ),
  }))
  const possuidos         = ingredientesStatus.filter(i => i.possui).length
  const totalObrigatorios = receita.ingredientes.length
  const pct               = temIngredientes
    ? Math.round((possuidos / totalObrigatorios) * 100)
    : null
  const nomesFaltando     = ingredientesStatus.filter(i => !i.possui).map(i => i.nome)

  const barColor =
    pct === 100 ? 'bg-green-500'
    : pct >= 60 ? 'bg-amber-500'
    :              'bg-amber-400'

  const statusMsg =
    pct === 100    ? '✅ Você tem todos os ingredientes!'
    : possuidos === 0 ? 'Você ainda não tem nenhum ingrediente desta receita'
    :                   `Você tem ${possuidos} de ${totalObrigatorios} ingredientes`

  return (
    <>
      <div
        className="fixed inset-0 bg-black/60 backdrop-blur-sm z-50"
        onClick={onClose}
      />

      <div className="fixed inset-0 z-50 flex items-end sm:items-center
                      justify-center p-0 sm:p-4 pointer-events-none">
        <div
          className="bg-white w-full sm:max-w-2xl
                     h-[95dvh] sm:h-auto sm:max-h-[90vh]
                     rounded-t-3xl sm:rounded-3xl
                     flex flex-col shadow-2xl overflow-hidden
                     pointer-events-auto animate-slide-up"
          onClick={e => e.stopPropagation()}
        >
          <div className="flex justify-center pt-3 pb-0 sm:hidden flex-shrink-0">
            <div className="w-10 h-1.5 bg-gray-200 rounded-full" />
          </div>

          <div className="relative flex-shrink-0 px-6 pt-4 pb-6"
               style={{ background: gradient }}>

            <button
              onClick={onClose}
              aria-label="Fechar"
              className="absolute top-4 right-4 w-9 h-9 flex items-center justify-center
                         bg-white/80 hover:bg-white backdrop-blur-sm rounded-full
                         shadow-md text-gray-600 hover:text-gray-900 transition-all"
            >
              <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                      d="M6 18L18 6M6 6l12 12" />
              </svg>
            </button>

            <span className="block text-6xl sm:text-7xl mb-4 select-none">
              {receita.emoji}
            </span>

            <div className="flex flex-wrap gap-2 mb-3">
              <span className={`text-xs font-semibold px-2.5 py-1 rounded-full
                                ${CATEGORY_BADGE[receita.categoria] ?? 'bg-gray-100 text-gray-600'}`}>
                {receita.categoria}
              </span>
              {receita.rapida && (
                <span className="text-xs font-semibold px-2.5 py-1 rounded-full
                                 bg-amber-100 text-amber-700">
                  ⚡ Receita rápida
                </span>
              )}
              {receita.tipicaFesta && (
                <span className="text-xs font-semibold px-2.5 py-1 rounded-full
                                 bg-purple-100 text-purple-700">
                  🎉 Típica de festa
                </span>
              )}
              {receita.vegano && (
                <span className="text-xs font-semibold px-2.5 py-1 rounded-full
                                 bg-green-100 text-green-700">
                  🌱 Vegano
                </span>
              )}
              {receita.diet && (
                <span className="text-xs font-semibold px-2.5 py-1 rounded-full
                                 bg-teal-100 text-teal-700">
                  🥗 Diet
                </span>
              )}
            </div>

            <h1 className="font-display font-bold text-gray-900 text-2xl sm:text-3xl
                           leading-tight">
              {receita.nome}
            </h1>
          </div>

          <div className="flex-shrink-0 bg-white border-y border-gray-100">
            <div className="flex items-stretch divide-x divide-gray-100">
              <InfoStat icon="⏱️" label="Tempo"   value={receita.tempo} />
              <InfoStat icon="🍽️" label="Porções" value={`${receita.porcoes} pessoas`} />
              <div className="flex-1 flex flex-col items-center justify-center py-3 px-2">
                <span className="text-[10px] text-gray-400 uppercase tracking-wider mb-1.5">
                  Dificuldade
                </span>
                <span className={`text-xs font-semibold px-2.5 py-0.5 rounded-full
                                  ${DIFFICULTY_STYLE[receita.dificuldade] ?? 'bg-gray-100 text-gray-600'}`}>
                  {receita.dificuldade}
                </span>
              </div>
            </div>
          </div>

          <div className="overflow-y-auto flex-1 px-6 py-6 space-y-7">

            {receita.ocasioes?.length > 0 && (
              <div>
                <SectionTitle icon="📅">Épocas &amp; Ocasiões</SectionTitle>
                <div className="flex flex-wrap gap-2 mt-3">
                  {receita.ocasioes.map(oc => (
                    <span key={oc}
                          className="text-xs font-medium px-3 py-1.5 rounded-full
                                     bg-gray-100 text-gray-600 border border-gray-200">
                      {oc}
                    </span>
                  ))}
                </div>
              </div>
            )}

            {temIngredientes && (
              <div className="bg-gradient-to-br from-amber-50 to-amber-50 rounded-2xl
                              p-4 border border-amber-100">
                <div className="flex items-center justify-between mb-2">
                  <p className="text-sm font-semibold text-amber-800 leading-snug pr-2">
                    {statusMsg}
                  </p>
                  <span className={`text-sm font-bold flex-shrink-0 ${
                    pct === 100 ? 'text-green-600' : pct >= 60 ? 'text-amber-600' : 'text-amber-500'
                  }`}>
                    {pct}%
                  </span>
                </div>

                <div className="h-2.5 bg-white rounded-full overflow-hidden border border-amber-100">
                  <div
                    className={`h-full rounded-full transition-all duration-700 ${barColor}`}
                    style={{ width: `${pct}%` }}
                  />
                </div>

                {nomesFaltando.length > 0 && (
                  <div className="mt-2.5">
                    <p className="text-[11px] font-semibold text-amber-600 mb-1.5">
                      Ingredientes faltando:
                    </p>
                    <div className="flex flex-wrap gap-1.5">
                      {nomesFaltando.map(nome => (
                        <span key={nome}
                              className="text-xs font-medium px-2.5 py-1 rounded-full
                                         bg-red-100 text-red-600 border border-red-200">
                          {nome}
                        </span>
                      ))}
                    </div>
                  </div>
                )}
              </div>
            )}

            <div>
              <div className="flex items-center justify-between mb-3">
                <SectionTitle icon="🧂">Ingredientes</SectionTitle>
                <span className="text-xs font-medium text-gray-400 bg-gray-100
                                 px-2.5 py-1 rounded-full">
                  {totalObrigatorios} {totalObrigatorios === 1 ? 'item' : 'itens'}
                </span>
              </div>
              <ul className="space-y-2">
                {ingredientesStatus.map(({ nome, possui }) => (
                  <IngredientItem
                    key={nome}
                    nome={nome}
                    possui={possui}
                    temIngredientes={temIngredientes}
                  />
                ))}
              </ul>
            </div>

            {receita.ingredientesOpcionais?.length > 0 && (
              <div>
                <div className="flex items-center justify-between mb-3">
                  <SectionTitle icon="✨">Opcionais</SectionTitle>
                  <span className="text-xs text-gray-400">
                    podem enriquecer o prato
                  </span>
                </div>
                <ul className="space-y-2">
                  {receita.ingredientesOpcionais.map(nome => (
                    <li key={nome}
                        className="flex items-center gap-3 py-2.5 px-3.5 rounded-xl
                                   bg-gray-50 border border-dashed border-gray-200">
                      <span className="w-5 h-5 rounded-full bg-gray-200 flex items-center
                                       justify-center flex-shrink-0">
                        <svg className="w-3 h-3 text-gray-500" fill="none" viewBox="0 0 24 24"
                             stroke="currentColor">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5}
                                d="M12 4v16m8-8H4" />
                        </svg>
                      </span>
                      <span className="text-sm text-gray-500">{nome}</span>
                      <span className="ml-auto text-[10px] text-gray-400 bg-gray-100
                                       border border-gray-200 px-2 py-0.5 rounded-full
                                       flex-shrink-0">
                        opcional
                      </span>
                    </li>
                  ))}
                </ul>
              </div>
            )}

            {receita.modoPreparo?.length > 0 && (
              <div>
                <div className="flex items-center justify-between mb-4">
                  <SectionTitle icon="👨‍🍳">Modo de Preparo</SectionTitle>
                  <span className="text-xs font-medium text-gray-400 bg-gray-100
                                   px-2.5 py-1 rounded-full">
                    {receita.modoPreparo.length} passos
                  </span>
                </div>

                <button
                  onClick={() => { onClose(); abrirModoGuiado(receita) }}
                  className="w-full flex items-center justify-center gap-2 mb-5
                             bg-amber-500 hover:bg-amber-400 active:scale-[0.98]
                             text-white font-bold py-3 rounded-2xl transition-all
                             shadow-md shadow-amber-200 text-sm"
                >
                  <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5}
                          d="M14.752 11.168l-3.197-2.132A1 1 0 0010 9.87v4.263a1 1 0 001.555.832
                             l3.197-2.132a1 1 0 000-1.664z" />
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                          d="M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                  </svg>
                  Iniciar modo guiado
                </button>

                <ol className="space-y-4">
                  {receita.modoPreparo.map((passo, i) => (
                    <li key={i} className="flex gap-4">
                      <span className="flex-shrink-0 w-7 h-7 rounded-full bg-amber-500
                                       text-white text-xs font-bold flex items-center
                                       justify-center shadow-sm shadow-amber-200 mt-0.5">
                        {i + 1}
                      </span>
                      <p className="text-sm text-gray-700 leading-relaxed pt-0.5">
                        {passo}
                      </p>
                    </li>
                  ))}
                </ol>
              </div>
            )}

            <div className="h-4" />
          </div>

        </div>
      </div>
    </>
  )
}
