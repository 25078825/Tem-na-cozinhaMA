import { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import RecipeCard        from '../components/ui/RecipeCard'
import SecaoCard         from '../components/secoes/SecaoCard'
import RecipeDetailModal from '../components/ui/RecipeDetailModal'
import { useReceitas }           from '../hooks/useReceitas'
import { SECOES, getReceitasDaSecao } from '../data/secoes'

const STATS = [
  { number: '15+', label: 'Receitas tradicionais', emoji: '🍲' },
  { number: '29+', label: 'Ingredientes regionais', emoji: '🌿' },
  { number: '8',   label: 'Categorias especiais',   emoji: '📅' },
]

const STEPS = [
  { step: '1', emoji: '🧅', title: 'Informe o que você tem',
    desc: 'Selecione os ingredientes disponíveis em casa agora mesmo.' },
  { step: '2', emoji: '🔍', title: 'O sistema analisa',
    desc: 'Encontramos receitas que combinam com seus ingredientes.' },
  { step: '3', emoji: '👨‍🍳', title: 'Escolha e cozinhe',
    desc: 'Veja o modo de preparo e prepare um prato maranhense incrível.' },
]

const SECOES_TEASER_IDS = ['rapidas', 'festas', 'sao-joao', 'dia-a-dia']


function LoadingSkeleton() {
  return (
    <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 md:gap-5">
      {[...Array(4)].map((_, i) => (
        <div key={i} className="bg-white rounded-2xl border border-gray-100 overflow-hidden
                                animate-pulse">
          <div className="h-44 bg-gray-100" />
          <div className="p-4 space-y-3">
            <div className="h-4 bg-gray-100 rounded w-3/4" />
            <div className="h-3 bg-gray-100 rounded w-full" />
            <div className="h-3 bg-gray-100 rounded w-1/2" />
          </div>
        </div>
      ))}
    </div>
  )
}

export default function Home() {
  const navigate = useNavigate()
  const { receitas, loading } = useReceitas()
  const [selectedReceita, setSelectedReceita] = useState(null)

  const destaques    = receitas.filter(r => r.destaque).slice(0, 4)
  const secoesTeaser = SECOES.filter(s => SECOES_TEASER_IDS.includes(s.id))

  return (
    <div>
      {/* ── Hero ───────────────────────────────────────── */}
      <section className="relative overflow-hidden bg-gradient-to-br
                          from-amber-500 via-amber-600 to-amber-700 text-white">
        <div className="absolute inset-0"
             style={{
               backgroundImage: `radial-gradient(circle at 20% 50%, rgba(255,255,255,0.05) 0%, transparent 50%),
                                  radial-gradient(circle at 80% 20%, rgba(255,200,50,0.08) 0%, transparent 40%)`,
             }} />
        <div className="relative container-page py-20 md:py-28 lg:py-32">
          <div className="max-w-2xl mx-auto text-center">
            <div className="inline-flex items-center gap-2 bg-white/15 backdrop-blur-sm
                            border border-white/25 text-white/90 text-xs font-semibold
                            px-4 py-1.5 rounded-full mb-6 tracking-wide uppercase">
              <span className="w-1.5 h-1.5 bg-green-400 rounded-full animate-pulse" />
              Culinária maranhense ao seu alcance
            </div>
            <h1 className="text-4xl md:text-5xl lg:text-6xl font-display font-bold
                           leading-[1.1] mb-6 tracking-tight">
              O que tem<br />
              <span className="text-amber-200">na sua cozinha?</span>
            </h1>
            <p className="text-base md:text-lg text-amber-100/90 leading-relaxed mb-8 max-w-lg mx-auto">
              Informe os ingredientes que você tem em casa e descubra receitas
              deliciosas da culinária maranhense para preparar agora.
            </p>
            <div className="flex flex-col sm:flex-row gap-3 justify-center">
              <button onClick={() => navigate('/buscar')}
                      className="bg-white text-amber-600 font-bold px-8 py-3.5 rounded-xl
                                 hover:bg-amber-50 active:scale-[0.97] transition-all
                                 shadow-xl shadow-amber-900/20 text-sm md:text-base
                                 flex items-center justify-center gap-2">
                Buscar Receitas
                <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M9 5l7 7-7 7" />
                </svg>
              </button>
              <button onClick={() => navigate('/secoes')}
                      className="bg-white/10 hover:bg-white/20 border border-white/25
                                 text-white font-semibold px-8 py-3.5 rounded-xl transition-all
                                 text-sm md:text-base backdrop-blur-sm
                                 flex items-center justify-center gap-2">
                <span>📅</span> Ver por época
              </button>
            </div>
          </div>
        </div>
        <div className="absolute bottom-0 inset-x-0 h-8 bg-white"
             style={{ clipPath: 'ellipse(55% 100% at 50% 100%)' }} />
      </section>

      {/* ── Stats ─────────────────────────────────────── */}
      <section className="bg-white">
        <div className="container-page py-10">
          <div className="grid grid-cols-3 gap-4 md:gap-8">
            {STATS.map((s, i) => (
              <div key={i} className="text-center group">
                <div className="inline-flex items-center justify-center w-10 h-10
                                bg-amber-50 rounded-xl text-xl mb-2
                                group-hover:scale-110 transition-transform duration-300">
                  {s.emoji}
                </div>
                <p className="text-2xl md:text-3xl font-display font-bold text-gray-900">
                  {s.number}
                </p>
                <p className="text-xs md:text-sm text-gray-500 mt-0.5 leading-tight">{s.label}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* ── Como funciona ─────────────────────────────── */}
      <section className="py-16 md:py-24 bg-amber-50">
        <div className="container-page">
          <div className="text-center mb-12">
            <p className="text-xs font-bold text-amber-500 uppercase tracking-widest mb-2">
              Como funciona
            </p>
            <h2 className="section-title mb-3">Em 3 passos simples</h2>
          </div>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
            {STEPS.map(item => (
              <div key={item.step}
                   className="bg-white rounded-2xl p-7 border border-gray-100 shadow-sm
                              hover:shadow-md hover:-translate-y-1 transition-all duration-300">
                <div className="flex items-center gap-3 mb-5">
                  <div className="w-8 h-8 bg-amber-500 rounded-xl flex items-center
                                  justify-center text-white text-sm font-black shadow-sm">
                    {item.step}
                  </div>
                </div>
                <div className="text-4xl mb-4">{item.emoji}</div>
                <h3 className="font-display font-semibold text-gray-900 text-base mb-2">
                  {item.title}
                </h3>
                <p className="text-gray-500 text-sm leading-relaxed">{item.desc}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* ── Receitas em destaque ──────────────────────── */}
      <section className="py-16 md:py-24 bg-white">
        <div className="container-page">
          <div className="flex items-end justify-between mb-8">
            <div>
              <p className="text-xs font-bold text-amber-500 uppercase tracking-widest mb-1">
                Receitas
              </p>
              <h2 className="section-title">Em destaque</h2>
            </div>
            <button onClick={() => navigate('/buscar')}
                    className="hidden sm:flex items-center gap-1.5 text-sm font-semibold
                               text-gray-500 hover:text-amber-600 transition-colors group">
              Ver todas
              <svg className="w-4 h-4 group-hover:translate-x-1 transition-transform"
                   fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
              </svg>
            </button>
          </div>

          {loading ? (
            <LoadingSkeleton />
          ) : (
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 md:gap-5">
              {destaques.map(receita => (
                <RecipeCard key={receita.id} receita={receita} onClick={setSelectedReceita} />
              ))}
            </div>
          )}
        </div>
      </section>

      {/* ── Seções Especiais ──────────────────────────── */}
      <section className="py-16 md:py-24 bg-amber-50">
        <div className="container-page">
          <div className="flex items-end justify-between mb-8">
            <div>
              <p className="text-xs font-bold text-amber-500 uppercase tracking-widest mb-1">
                Categorias
              </p>
              <h2 className="section-title">Seções Especiais</h2>
            </div>
            <button onClick={() => navigate('/secoes')}
                    className="hidden sm:flex items-center gap-1.5 text-sm font-semibold
                               text-gray-500 hover:text-amber-600 transition-colors group">
              Ver todas
              <svg className="w-4 h-4 group-hover:translate-x-1 transition-transform"
                   fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
              </svg>
            </button>
          </div>
          <div className="grid grid-cols-2 md:grid-cols-4 gap-3 md:gap-4">
            {secoesTeaser.map(secao => (
              <SecaoCard
                key={secao.id}
                secao={secao}
                count={getReceitasDaSecao(secao, receitas).length}
                onClick={() => navigate('/secoes')}
              />
            ))}
          </div>
        </div>
      </section>

      {selectedReceita && (
        <RecipeDetailModal
          receita={selectedReceita}
          onClose={() => setSelectedReceita(null)}
        />
      )}


      <section className="py-20 bg-gradient-to-br from-gray-900 to-gray-800">
        <div className="container-page text-center">
          <span className="text-5xl mb-6 block">🍳</span>
          <h2 className="text-3xl md:text-4xl font-display font-bold text-white mb-4">
            Pronto para cozinhar?
          </h2>
          <p className="text-gray-400 text-base mb-8 max-w-sm mx-auto leading-relaxed">
            Descubra o que você pode preparar com os ingredientes que já tem em casa.
          </p>
          <button onClick={() => navigate('/buscar')}
                  className="bg-amber-500 hover:bg-amber-400 active:scale-[0.97]
                             text-white font-bold px-10 py-4 rounded-xl
                             transition-all shadow-xl shadow-amber-900/30 text-base
                             inline-flex items-center gap-2">
            Começar agora
            <svg className="w-4 h-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2.5} d="M9 5l7 7-7 7" />
            </svg>
          </button>
        </div>
      </section>
    </div>
  )
}