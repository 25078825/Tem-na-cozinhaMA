function ArrowIcon() {
  return (
    <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
    </svg>
  )
}

function SecaoCardFeatured({ secao, count, onClick }) {
  return (
    <button
      onClick={onClick}
      className="relative overflow-hidden rounded-2xl bg-white border border-gray-100
                 p-7 md:p-8 text-left w-full group cursor-pointer shadow-sm
                 hover:-translate-y-1 hover:shadow-lg hover:border-gray-200
                 transition-all duration-300"
    >
      <div className={`absolute inset-x-0 top-0 h-1 bg-gradient-to-r ${secao.gradient}`} />

      <div className={`absolute inset-0 bg-gradient-to-br ${secao.gradient} opacity-[0.04]
                       group-hover:opacity-[0.07] transition-opacity duration-300 rounded-2xl`} />

      <div className="relative">
        <h3 className="text-xl md:text-2xl font-display font-bold text-gray-900
                       mb-1 leading-tight group-hover:text-gray-700 transition-colors">
          {secao.titulo}
        </h3>
        <p className="text-sm text-gray-500 mb-2 font-medium">{secao.subtitulo}</p>
        <p className="text-xs text-gray-400 leading-relaxed mb-6 max-w-xs">
          {secao.descricao}
        </p>
        <div className="flex items-center justify-between">
          <span className={`inline-flex items-center text-xs font-bold px-3 py-1.5
                            rounded-full bg-gradient-to-r ${secao.gradient}
                            text-white shadow-sm`}>
            {count} receitas
          </span>
          <span className="flex items-center gap-1 text-gray-400 text-xs font-medium
                           group-hover:text-gray-600 group-hover:gap-2 transition-all duration-200">
            Ver todas <ArrowIcon />
          </span>
        </div>
      </div>
    </button>
  )
}

function SecaoCardNormal({ secao, count, onClick }) {
  return (
    <button
      onClick={onClick}
      className="relative overflow-hidden rounded-2xl bg-white border border-gray-100
                 p-5 text-left w-full group cursor-pointer shadow-sm
                 hover:-translate-y-1 hover:shadow-md hover:border-gray-200
                 transition-all duration-300"
    >
      <div className={`absolute inset-x-0 top-0 h-1 bg-gradient-to-r ${secao.gradient}`} />

      <div className={`absolute inset-0 bg-gradient-to-br ${secao.gradient} opacity-[0.04]
                       group-hover:opacity-[0.07] transition-opacity duration-300 rounded-2xl`} />

      <div className="relative">
        <h3 className="font-display font-bold text-gray-900 text-sm md:text-base
                       leading-tight mb-1 group-hover:text-gray-700 transition-colors">
          {secao.titulo}
        </h3>
        <p className="text-[11px] text-gray-400 font-medium">{secao.subtitulo}</p>
        <div className="mt-4 flex items-center justify-between">
          <span className={`inline-flex items-center text-[10px] font-bold px-2 py-0.5
                            rounded-full bg-gradient-to-r ${secao.gradient} text-white shadow-sm`}>
            {count}
          </span>
          <span className="text-gray-300 group-hover:text-gray-500
                           group-hover:translate-x-1 transition-all duration-200">
            <ArrowIcon />
          </span>
        </div>
      </div>
    </button>
  )
}

export default function SecaoCard({ secao, count = 0, onClick, featured = false }) {
  if (featured) return <SecaoCardFeatured secao={secao} count={count} onClick={onClick} />
  return <SecaoCardNormal secao={secao} count={count} onClick={onClick} />
}
