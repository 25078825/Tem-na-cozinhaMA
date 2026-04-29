import { useState, useMemo } from 'react'
import RecipeCard from './RecipeCard'
import EmptyState from './EmptyState'

const DIFFICULTY_ORDER = { 'Fácil': 0, 'Média': 1, 'Difícil': 2 }

const SORT_OPTIONS = [
  { value: 'relevancia',     label: 'Relevância',                  ingredientesOnly: false },
  { value: 'nome',           label: 'Nome A–Z',                    ingredientesOnly: false },
  { value: 'mais-rapidas',   label: 'Mais rápidas',                ingredientesOnly: false },
  { value: 'mais-faceis',    label: 'Mais fáceis',                 ingredientesOnly: false },
  { value: 'menos-faltando', label: 'Menos faltando',              ingredientesOnly: true  },
]

function sortReceitas(receitas, sortBy) {
  const arr = [...receitas]
  switch (sortBy) {
    case 'nome':           return arr.sort((a, b) => a.nome.localeCompare(b.nome, 'pt-BR'))
    case 'mais-rapidas':   return arr.sort((a, b) => a.tempo_minutos - b.tempo_minutos)
    case 'mais-faceis':    return arr.sort((a, b) =>
      (DIFFICULTY_ORDER[a.dificuldade] ?? 9) - (DIFFICULTY_ORDER[b.dificuldade] ?? 9))
    case 'menos-faltando': return arr.sort((a, b) => (a.faltando ?? 0) - (b.faltando ?? 0))
    default:               return arr
  }
}

function SectionHeader({ icon, bgIcon, title, subtitle, count, countCls }) {
  return (
    <div className="flex items-center gap-3 mb-5">
      <div className={`w-10 h-10 rounded-xl flex items-center justify-center
                       text-lg flex-shrink-0 shadow-sm ${bgIcon}`}>
        {icon}
      </div>
      <div className="flex-1 min-w-0">
        <h2 className="font-display font-bold text-gray-900 text-lg leading-tight">
          {title}
        </h2>
        <p className="text-xs text-gray-500">{subtitle}</p>
      </div>
      <span className={`text-sm font-bold px-3 py-1 rounded-full
                        flex-shrink-0 ${countCls}`}>
        {count}
      </span>
    </div>
  )
}

function CardGrid({ receitas, ingredientesUsuario, onReceitaClick }) {
  if (!receitas.length) return null
  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 md:gap-5">
      {receitas.map(r => (
        <RecipeCard
          key={r.id}
          receita={r}
          ingredientesUsuario={ingredientesUsuario}
          onClick={onReceitaClick}
        />
      ))}
    </div>
  )
}

export default function RecipeGrid({
  todasFiltradas      = [],
  receitasCompletas   = [],
  receitasQuase       = [],
  ingredientesUsuario = [],
  temIngredientes     = false,
  temFiltrosAtivos    = false,
  onLimparFiltros,
  onReceitaClick,
}) {
  const [sortBy, setSortBy] = useState('relevancia')

  const sortOptions     = SORT_OPTIONS.filter(o => !o.ingredientesOnly || temIngredientes)
  const sortedCompletas = useMemo(() => sortReceitas(receitasCompletas, sortBy), [receitasCompletas, sortBy])
  const sortedQuase     = useMemo(() => sortReceitas(receitasQuase,     sortBy), [receitasQuase,     sortBy])
  const sortedTodas     = useMemo(() => sortReceitas(todasFiltradas,    sortBy), [todasFiltradas,    sortBy])

  const totalVisivel = temIngredientes
    ? receitasCompletas.length + receitasQuase.length
    : todasFiltradas.length

  return (
    <div>

      {/* ── Sort bar ──────────────────────────────── */}
      {totalVisivel > 0 && (
        <div className="flex items-center justify-between gap-3 mb-6 flex-wrap">
          <p className="text-sm text-gray-500">
            <span className="font-bold text-gray-800 text-base">{totalVisivel}</span>{' '}
            {temIngredientes
              ? totalVisivel === 1 ? 'receita compatível' : 'receitas compatíveis'
              : totalVisivel === 1 ? 'receita encontrada' : 'receitas encontradas'}
          </p>
          <div className="flex items-center gap-2">
            <span className="text-xs text-gray-400 hidden sm:block">Ordenar:</span>
            <select
              value={sortBy}
              onChange={e => setSortBy(e.target.value)}
              className="text-xs bg-white border border-gray-200 rounded-xl px-3 py-2
                         text-gray-700 font-medium shadow-sm cursor-pointer
                         focus:outline-none focus:ring-2 focus:ring-orange-300
                         focus:border-orange-400 transition-all hover:border-gray-300"
            >
              {sortOptions.map(o => (
                <option key={o.value} value={o.value}>{o.label}</option>
              ))}
            </select>
          </div>
        </div>
      )}

      {/* ── Sem resultados ────────────────────────── */}
      {totalVisivel === 0 && (
        <EmptyState
          icon="🔍"
          title="Nenhuma receita encontrada"
          desc={
            temFiltrosAtivos
              ? 'Nenhuma receita corresponde aos filtros aplicados. Tente ajustá-los.'
              : 'Adicione ingredientes no painel ao lado para descobrir o que você pode preparar.'
          }
          action={temFiltrosAtivos ? { label: 'Limpar todos os filtros', onClick: onLimparFiltros } : null}
        />
      )}

      {/* ── Com ingredientes ──────────────────────── */}
      {temIngredientes && totalVisivel > 0 && (
        <div className="space-y-10">

          {/* Pode fazer agora */}
          <section>
            <SectionHeader
              icon="✅" bgIcon="bg-green-100"
              title="Pode fazer agora"
              subtitle="Você tem todos os ingredientes necessários"
              count={receitasCompletas.length}
              countCls="bg-green-100 text-green-700"
            />
            {receitasCompletas.length > 0 ? (
              <CardGrid
                receitas={sortedCompletas}
                ingredientesUsuario={ingredientesUsuario}
                onReceitaClick={onReceitaClick}
              />
            ) : (
              <EmptyState icon="😅" title="Nenhuma receita completa ainda"
                          desc="Continue adicionando ingredientes para desbloquear receitas." compact />
            )}
          </section>

          {/* Separador */}
          <div className="relative flex items-center gap-3">
            <div className="flex-1 border-t border-gray-200 border-dashed" />
            <span className="text-xs text-gray-400 font-medium bg-amber-50
                             px-3 py-1 rounded-full border border-gray-200 flex-shrink-0">
              com poucos ingredientes a mais
            </span>
            <div className="flex-1 border-t border-gray-200 border-dashed" />
          </div>

          {/* Quase lá */}
          <section>
            <SectionHeader
              icon="🧩" bgIcon="bg-yellow-100"
              title="Quase lá"
              subtitle="Faltam até 3 ingredientes para completar"
              count={receitasQuase.length}
              countCls="bg-yellow-100 text-yellow-700"
            />
            {receitasQuase.length > 0 ? (
              <CardGrid
                receitas={sortedQuase}
                ingredientesUsuario={ingredientesUsuario}
                onReceitaClick={onReceitaClick}
              />
            ) : (
              <EmptyState icon="🤷" title="Nenhuma receita próxima"
                          desc="Adicione mais ingredientes para ver sugestões." compact />
            )}
          </section>
        </div>
      )}

      {/* ── Sem ingredientes ──────────────────────── */}
      {!temIngredientes && totalVisivel > 0 && (
        <>
          {!temFiltrosAtivos && (
            <div className="bg-gradient-to-r from-orange-50 to-amber-50
                            border border-orange-100 rounded-2xl p-4 flex gap-3.5 mb-6">
              <div className="w-9 h-9 bg-orange-100 rounded-xl flex items-center
                              justify-center text-lg flex-shrink-0">
                💡
              </div>
              <div>
                <p className="font-semibold text-orange-800 text-sm">
                  Dica: adicione seus ingredientes
                </p>
                <p className="text-xs text-orange-600 leading-relaxed mt-0.5">
                  Use o painel ao lado para descobrir quais receitas você pode preparar agora!
                </p>
              </div>
            </div>
          )}
          <CardGrid
            receitas={sortedTodas}
            ingredientesUsuario={[]}
            onReceitaClick={onReceitaClick}
          />
        </>
      )}
    </div>
  )
}