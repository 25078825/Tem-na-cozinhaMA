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
      className={`relative overflow-hidden rounded-2xl bg-gradient-to-br ${secao.gradient}
                  p-7 md:p-8 text-left w-full group cursor-pointer
                  hover:-translate-y-1 hover:shadow-2xl
                  transition-all duration-300 shadow-lg`}
    >
      {/* Fundo decorativo */}
      <span className="absolute right-0 top-0 bottom-0 flex items-center pr-6
                       text-[120px] opacity-[0.10] select-none pointer-events-none">
        {secao.emoji}
      </span>

      {/* Brilho de hover */}
      <div className="absolute inset-0 bg-white/0 group-hover:bg-white/5
                      transition-colors duration-300 rounded-2xl" />

      <div className="relative">
        <span className="text-4xl md:text-5xl mb-4 block
                         group-hover:scale-110 transition-transform duration-300
                         origin-left">
          {secao.emoji}
        </span>
        <h3 className="text-xl md:text-2xl font-display font-bold text-white
                       mb-1 leading-tight">
          {secao.titulo}
        </h3>
        <p className="text-sm text-white/75 mb-2 font-medium">{secao.subtitulo}</p>
        <p className="text-xs text-white/55 leading-relaxed mb-6 max-w-xs">
          {secao.descricao}
        </p>

        <div className="flex items-center justify-between">
          <span className="inline-flex items-center bg-black/20 backdrop-blur-sm
                           text-white text-xs font-bold px-3 py-1.5 rounded-full
                           border border-white/20">
            {count} receitas
          </span>
          <span className="flex items-center gap-1 text-white/70 text-xs font-medium
                           group-hover:text-white group-hover:gap-2 transition-all duration-200">
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
      className={`relative overflow-hidden rounded-2xl bg-gradient-to-br ${secao.gradient}
                  p-5 text-left w-full group cursor-pointer
                  hover:-translate-y-1 hover:shadow-xl
                  transition-all duration-300 shadow-md`}
    >
      {/* Brilho de hover */}
      <div className="absolute inset-0 bg-white/0 group-hover:bg-white/5
                      transition-colors duration-300 rounded-2xl" />

      {/* Emoji decorativo de fundo */}
      <span className="absolute -right-3 -bottom-2 text-[72px] opacity-[0.10]
                       select-none pointer-events-none leading-none">
        {secao.emoji}
      </span>

      <div className="relative">
        <span className="text-3xl mb-3 block
                         group-hover:scale-105 transition-transform duration-300
                         origin-left">
          {secao.emoji}
        </span>
        <h3 className="font-display font-bold text-white text-sm md:text-base
                       leading-tight mb-1">
          {secao.titulo}
        </h3>
        <p className="text-[11px] text-white/65 font-medium">{secao.subtitulo}</p>

        <div className="mt-4 flex items-center justify-between">
          <span className="inline-flex items-center bg-black/15 text-white text-[10px]
                           font-bold px-2 py-0.5 rounded-full border border-white/15">
            {count}
          </span>
          <span className="text-white/60 group-hover:text-white
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