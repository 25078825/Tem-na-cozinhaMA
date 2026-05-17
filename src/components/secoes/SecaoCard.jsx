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
                 text-left w-full group cursor-pointer shadow-sm
                 hover:-translate-y-1 hover:shadow-xl
                 transition-all duration-300"
    >
      <div className="relative h-44 overflow-hidden">
        <img
          src={secao.foto}
          alt={secao.titulo}
          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
        />
        <div className="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent" />
        <span className={`absolute bottom-3 left-4 inline-flex items-center text-xs font-bold
                          px-3 py-1.5 rounded-full bg-gradient-to-r ${secao.gradient}
                          text-white shadow-sm`}>
          {count} receitas
        </span>
      </div>

      <div className="p-5">
        <h3 className="text-lg font-display font-bold text-gray-900 mb-1 leading-tight
                       group-hover:text-gray-700 transition-colors">
          {secao.titulo}
        </h3>
        <p className="text-sm text-gray-500 mb-3 font-medium">{secao.subtitulo}</p>
        <p className="text-xs text-gray-400 leading-relaxed">{secao.descricao}</p>
        <span className="mt-4 flex items-center gap-1 text-gray-400 text-xs font-medium
                         group-hover:text-gray-600 group-hover:gap-2 transition-all duration-200">
          Ver todas <ArrowIcon />
        </span>
      </div>
    </button>
  )
}

function SecaoCardNormal({ secao, count, onClick }) {
  return (
    <button
      onClick={onClick}
      className="relative overflow-hidden rounded-2xl bg-white border border-gray-100
                 text-left w-full group cursor-pointer shadow-sm
                 hover:-translate-y-1 hover:shadow-md
                 transition-all duration-300"
    >
      <div className="relative h-28 overflow-hidden">
        <img
          src={secao.foto}
          alt={secao.titulo}
          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
        />
        <div className="absolute inset-0 bg-gradient-to-t from-black/60 via-black/10 to-transparent" />
        <span className={`absolute bottom-2 left-3 inline-flex items-center text-[10px] font-bold
                          px-2 py-0.5 rounded-full bg-gradient-to-r ${secao.gradient} text-white shadow-sm`}>
          {count}
        </span>
      </div>

      <div className="p-4">
        <h3 className="font-display font-bold text-gray-900 text-sm leading-tight mb-1
                       group-hover:text-gray-700 transition-colors">
          {secao.titulo}
        </h3>
        <div className="flex items-center justify-between mt-2">
          <p className="text-[11px] text-gray-400 font-medium">{secao.subtitulo}</p>
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
