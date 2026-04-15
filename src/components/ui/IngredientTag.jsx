export default function IngredientTag({ nome, onRemove }) {
  return (
    <span className="inline-flex items-center gap-1.5 px-3 py-1.5
                     bg-orange-100 text-orange-700 rounded-full text-sm font-medium
                     border border-orange-200">
      {nome}
      {onRemove && (
        <button
          onClick={() => onRemove(nome)}
          className="ml-0.5 w-4 h-4 flex items-center justify-center rounded-full
                     text-orange-400 hover:text-orange-700 hover:bg-orange-200
                     transition-colors"
          aria-label={`Remover ${nome}`}
        >
          <svg className="w-3 h-3" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5}
                  d="M6 18L18 6M6 6l12 12" />
          </svg>
        </button>
      )}
    </span>
  )
}