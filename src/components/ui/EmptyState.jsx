const ILLUSTRATIONS = {
  '🔍': { bg: 'bg-blue-50',   ring: 'ring-blue-100'   },
  '😅': { bg: 'bg-amber-50', ring: 'ring-amber-100' },
  '🤷': { bg: 'bg-gray-50',   ring: 'ring-gray-100'   },
  '🍽️': { bg: 'bg-amber-50', ring: 'ring-amber-100' },
}

export default function EmptyState({ icon, title, desc, action, compact = false }) {
  const style = ILLUSTRATIONS[icon] ?? { bg: 'bg-gray-50', ring: 'ring-gray-100' }

  if (compact) {
    return (
      <div className="bg-white rounded-2xl border border-dashed border-gray-200
                      py-8 px-6 text-center">
        <div className={`w-12 h-12 ${style.bg} ring-4 ${style.ring}
                         rounded-2xl flex items-center justify-center
                         mx-auto mb-3`}>
        </div>
        <p className="font-semibold text-gray-700 text-sm">{title}</p>
        <p className="text-xs text-gray-400 mt-1 leading-relaxed">{desc}</p>
        {action && (
          <button
            onClick={action.onClick}
            className="mt-3 text-xs font-semibold text-amber-500
                       hover:text-amber-700 transition-colors"
          >
            {action.label}
          </button>
        )}
      </div>
    )
  }

  return (
    <div className="bg-white rounded-2xl border border-gray-100 shadow-sm
                    py-16 px-8 text-center">
      <div className={`w-20 h-20 ${style.bg} ring-8 ${style.ring}
                       rounded-3xl flex items-center justify-center
                       mx-auto mb-6 shadow-sm`}>
      </div>

      <h3 className="font-display font-bold text-gray-800 text-xl mb-2">
        {title}
      </h3>

      <p className="text-gray-500 text-sm leading-relaxed max-w-xs mx-auto">
        {desc}
      </p>

      {action && (
        <button
          onClick={action.onClick}
          className="mt-6 btn-secondary text-sm px-5 py-2.5"
        >
          {action.label}
        </button>
      )}
    </div>
  )
}