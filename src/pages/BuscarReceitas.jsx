import { useState } from 'react'
import { useFiltros }          from '../hooks/useFiltros'
import SearchBar               from '../components/ui/SearchBar'
import RecipeGrid              from '../components/ui/RecipeGrid'
import RecipeDetailModal       from '../components/ui/RecipeDetailModal'
import IngredientePicker       from '../components/busca/IngredientePicker'
import FiltrosPanel            from '../components/busca/FiltrosPanel'

export default function BuscarReceitas() {
  const [mobileOpen,     setMobileOpen]     = useState(false)
  const [selectedReceita, setSelectedReceita] = useState(null)

  const {
    filtros,
    setFiltro,
    toggleDificuldade,
    toggleOcasiao,
    adicionarIngrediente,
    removerIngrediente,
    limparIngredientes,
    limparFiltros,
    temFiltrosAtivos,
    contadorFiltrosAtivos,
    receitasCompletas,
    receitasQuase,
    todasFiltradas,
  } = useFiltros()

  const temIngredientes = filtros.ingredientes.length > 0

  const pickerProps = {
    ingredientes: filtros.ingredientes,
    onAdd:        adicionarIngrediente,
    onRemove:     removerIngrediente,
    onClear:      limparIngredientes,
  }

  const filtrosProps = {
    filtros,
    onSetFiltro:         setFiltro,
    onToggleDificuldade: toggleDificuldade,
    onToggleOcasiao:     toggleOcasiao,
    onLimpar:            limparFiltros,
    temFiltrosAtivos,
  }

  const totalVisivel = temIngredientes
    ? receitasCompletas.length + receitasQuase.length
    : todasFiltradas.length

  return (
    <div className="min-h-screen bg-amber-50">

      <div className="bg-white border-b border-gray-100">
        <div className="container-page py-8 md:py-12">
          <h1 className="section-title mb-2">Buscar Receitas</h1>
          <p className="text-gray-500">
            Informe seus ingredientes e use os filtros para encontrar a receita certa.
          </p>
        </div>
      </div>

      <div className="container-page py-6">

        <div className="mb-4">
          <SearchBar
            value={filtros.busca}
            onChange={v => setFiltro('busca', v)}
            placeholder="Buscar por nome da receita..."
          />
        </div>

        {/* Botão mobile */}
        <div className="flex items-center gap-2 mb-5 lg:hidden">
          <button
            onClick={() => setMobileOpen(true)}
            className={`flex items-center justify-center gap-2 flex-1 px-4 py-2.5
                        rounded-xl border font-medium text-sm transition-all shadow-sm ${
              contadorFiltrosAtivos > 0
                ? 'bg-orange-500 border-orange-500 text-white'
                : 'bg-white border-gray-200 text-gray-600 hover:border-orange-300'
            }`}
          >
            <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                    d="M3 4a1 1 0 011-1h16a1 1 0 011 1v2a1 1 0 01-.293.707L13 13.414V19
                       a1 1 0 01-.553.894l-4 2A1 1 0 017 21v-7.586L3.293 6.707A1 1 0 013 6V4z" />
            </svg>
            Ingredientes &amp; Filtros
            {contadorFiltrosAtivos > 0 && (
              <span className="bg-white text-orange-600 text-xs font-bold
                               w-5 h-5 rounded-full flex items-center justify-center flex-shrink-0">
                {contadorFiltrosAtivos}
              </span>
            )}
          </button>
          {temFiltrosAtivos && (
            <button
              onClick={limparFiltros}
              className="px-3 py-2.5 text-xs font-medium text-red-500 hover:text-red-700
                         border border-red-200 hover:border-red-300 rounded-xl
                         bg-white transition-colors whitespace-nowrap"
            >
              Limpar
            </button>
          )}
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8 items-start">

          {/* Sidebar desktop */}
          <aside className="hidden lg:block lg:col-span-1">
            <div className="bg-white rounded-2xl border border-gray-100 p-5 shadow-sm
                            sticky top-24">
              <IngredientePicker {...pickerProps} />
              <div className="h-px bg-gray-100 my-5" />
              <FiltrosPanel {...filtrosProps} />
            </div>
          </aside>

          {/* Resultados */}
          <div className="lg:col-span-2">
            <RecipeGrid
              todasFiltradas={todasFiltradas}
              receitasCompletas={receitasCompletas}
              receitasQuase={receitasQuase}
              ingredientesUsuario={filtros.ingredientes}
              temIngredientes={temIngredientes}
              temFiltrosAtivos={temFiltrosAtivos}
              onLimparFiltros={limparFiltros}
              onReceitaClick={setSelectedReceita}
            />
          </div>
        </div>
      </div>

      {/* ── Drawer mobile ────────────────────────── */}
      {mobileOpen && (
        <>
          <div className="fixed inset-0 bg-black/50 z-40 lg:hidden"
               onClick={() => setMobileOpen(false)} />
          <div className="fixed inset-x-0 bottom-0 z-50 lg:hidden bg-white
                          rounded-t-2xl max-h-[90vh] flex flex-col shadow-2xl">
            <div className="flex items-center justify-between px-5 py-4
                            border-b border-gray-100 flex-shrink-0">
              <h2 className="font-display font-semibold text-gray-800">
                Ingredientes &amp; Filtros
              </h2>
              <button onClick={() => setMobileOpen(false)}
                      className="p-2 rounded-lg hover:bg-gray-100 text-gray-500 transition-colors">
                <svg className="w-5 h-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                        d="M6 18L18 6M6 6l12 12" />
                </svg>
              </button>
            </div>
            <div className="overflow-y-auto flex-1 px-5 py-5">
              <IngredientePicker {...pickerProps} />
              <div className="h-px bg-gray-100 my-5" />
              <FiltrosPanel {...filtrosProps} />
            </div>
            <div className="px-5 pb-6 pt-3 border-t border-gray-100 flex-shrink-0 bg-white">
              <button onClick={() => setMobileOpen(false)} className="w-full btn-primary py-3 text-sm">
                Ver {totalVisivel} {totalVisivel === 1 ? 'resultado' : 'resultados'}
              </button>
            </div>
          </div>
        </>
      )}

      {/* ── Modal de detalhes ────────────────────── */}
      {selectedReceita && (
        <RecipeDetailModal
          receita={selectedReceita}
          ingredientesUsuario={filtros.ingredientes}
          onClose={() => setSelectedReceita(null)}
        />
      )}
    </div>
  )
}