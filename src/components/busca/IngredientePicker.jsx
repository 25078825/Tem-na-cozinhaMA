import { useState, useMemo } from 'react'
import { useIngredientes } from '../../hooks/useIngredientes'

export default function IngredientePicker({
  ingredientes: selecionados = [],
  onAdd,
  onRemove,
  onClear,
}) {
  const [busca, setBusca] = useState('')
  const { ingredientes: todosIngredientes, loading, error } = useIngredientes()

  const sugeridos = useMemo(() => {
    const q = busca.toLowerCase().trim()
    return todosIngredientes
      .filter(ing => !selecionados.includes(ing))
      .filter(ing => !q || ing.toLowerCase().includes(q))
      .slice(0, 20)
  }, [todosIngredientes, selecionados, busca])

  function handleAdd(ing) {
    onAdd(ing)
    setBusca('')
  }

  return (
    <div>
      <div className="flex items-center justify-between mb-4">
        <h3 className="font-display font-semibold text-gray-800 text-base
                       flex items-center gap-2">
          <span>🧅</span> Meus ingredientes
          {selecionados.length > 0 && (
            <span className="bg-orange-500 text-white text-[10px] font-bold
                             px-1.5 py-0.5 rounded-full">
              {selecionados.length}
            </span>
          )}
        </h3>
        {selecionados.length > 0 && (
          <button onClick={onClear}
                  className="text-xs text-red-400 hover:text-red-600 font-medium transition-colors">
            Limpar
          </button>
        )}
      </div>

      <div className="relative mb-3">
        <svg className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400"
             fill="none" viewBox="0 0 24 24" stroke="currentColor">
          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2}
                d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
        </svg>
        <input
          type="text"
          value={busca}
          onChange={e => setBusca(e.target.value)}
          placeholder={loading ? 'Carregando...' : 'Buscar ingrediente...'}
          disabled={loading}
          className="w-full pl-9 pr-4 py-2.5 text-sm bg-gray-50 border border-gray-200
                     rounded-xl placeholder-gray-400 text-gray-700
                     focus:outline-none focus:ring-2 focus:ring-orange-300
                     focus:border-orange-400 transition-all"
        />
      </div>

      {selecionados.length > 0 && (
        <div className="mb-4">
          <p className="text-[10px] font-bold text-gray-400 uppercase tracking-widest mb-2">
            Selecionados
          </p>
          <div className="flex flex-wrap gap-1.5">
            {selecionados.map(ing => (
              <button
                key={ing}
                onClick={() => onRemove(ing)}
                className="flex items-center gap-1 text-xs font-medium px-2.5 py-1
                           bg-orange-100 text-orange-700 rounded-full border border-orange-200
                           hover:bg-red-100 hover:text-red-600 hover:border-red-200
                           transition-colors group"
              >
                {ing}
                <svg className="w-3 h-3 opacity-60 group-hover:opacity-100"
                     fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5}
                        d="M6 18L18 6M6 6l12 12" />
                </svg>
              </button>
            ))}
          </div>
        </div>
      )}

      {sugeridos.length > 0 && (
        <div>
          <p className="text-[10px] font-bold text-gray-400 uppercase tracking-widest mb-2">
            {busca ? 'Resultados' : 'Sugestões'}
          </p>
          <div className="flex flex-wrap gap-1.5">
            {sugeridos.map(ing => (
              <button
                key={ing}
                onClick={() => handleAdd(ing)}
                className="text-xs font-medium px-2.5 py-1 rounded-full border
                           bg-white border-gray-200 text-gray-600
                           hover:border-orange-300 hover:text-orange-700 hover:bg-orange-50
                           transition-all duration-150"
              >
                + {ing}
              </button>
            ))}
          </div>
        </div>
      )}

      {error && (
        <p className="text-xs text-red-500 text-center py-4">
          Erro ao carregar ingredientes: {error}
        </p>
      )}

      {!loading && !error && busca && sugeridos.length === 0 && (
        <p className="text-xs text-gray-400 text-center py-4">
          Nenhum ingrediente encontrado para "<strong>{busca}</strong>"
        </p>
      )}
    </div>
  )
}