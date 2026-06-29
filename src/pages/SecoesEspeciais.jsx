import { useState } from 'react'
import { SECOES, getReceitasDaSecao } from '../data/secoes'
import { useReceitas }     from '../hooks/useReceitas'
import SecaoCard           from '../components/secoes/SecaoCard'
import RecipeCard          from '../components/ui/RecipeCard'
import RecipeDetailModal   from '../components/ui/RecipeDetailModal'
import EmptyState          from '../components/ui/EmptyState'

const FEATURED_IDS  = ['rapidas', 'festas', 'vegano', 'diet']
const SEASONAL_IDS  = ['sao-joao', 'natal', 'pascoa', 'semana-santa', 'dia-a-dia', 'domingo']
const SORT_OPTIONS  = [
  { value: 'default',      label: 'Padrão'      },
  { value: 'nome',         label: 'Nome (A–Z)'  },
  { value: 'mais-rapidas', label: 'Mais rápidas'},
  { value: 'mais-faceis',  label: 'Mais fáceis' },
]
const DIFFICULTY_ORDER = { 'Fácil': 0, 'Média': 1, 'Difícil': 2 }

function sortReceitas(receitas, sortBy) {
  const arr = [...receitas]
  switch (sortBy) {
    case 'nome':         return arr.sort((a, b) => a.nome.localeCompare(b.nome, 'pt-BR'))
    case 'mais-rapidas': return arr.sort((a, b) => a.tempo_minutos - b.tempo_minutos)
    case 'mais-faceis':  return arr.sort((a, b) =>
      (DIFFICULTY_ORDER[a.dificuldade] ?? 9) - (DIFFICULTY_ORDER[b.dificuldade] ?? 9))
    default:             return arr
  }
}

function SecaoDetalhe({ secao, receitas, onVoltar }) {
  const [sortBy,           setSortBy]           = useState('default')
  const [selectedReceita,  setSelectedReceita]  = useState(null)

  const receitasDaSecao = getReceitasDaSecao(secao, receitas)
  const sorted          = sortReceitas(receitasDaSecao, sortBy)

  return (
    <div className="min-h-screen bg-amber-50">
      <div className="relative overflow-hidden">
        {secao.foto && (
          <img
            src={secao.foto}
            alt={secao.titulo}
            className="absolute inset-0 w-full h-full object-cover"
          />
        )}
        <div className={`absolute inset-0 bg-gradient-to-br ${secao.gradient} ${secao.foto ? 'opacity-90' : ''}`} />
        <div className="container-page py-10 md:py-14 relative">
          <button onClick={onVoltar}
                  className="flex items-center gap-1.5 text-white/75 hover:text-white
                             text-sm font-medium mb-6 transition-colors group">
            <svg className="w-4 h-4 group-hover:-translate-x-1 transition-transform"
                 fill="none" viewBox="0 0 24 24" stroke="currentColor">
              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
            </svg>
            Todas as seções
          </button>
          <div className="flex items-start gap-4">
            <div>
              <h1 className="font-display font-bold text-white text-3xl md:text-4xl mb-2">
                {secao.titulo}
              </h1>
              <p className="text-white/80 text-sm md:text-base leading-relaxed max-w-xl">
                {secao.descricao}
              </p>
            </div>
          </div>
        </div>
      </div>

      <div className="container-page py-8">
        {receitasDaSecao.length === 0 ? (
          <EmptyState icon="🍽️" title="Nenhuma receita nesta seção"
                      desc="Ainda não temos receitas para esta categoria."
                      action={{ label: 'Voltar para seções', onClick: onVoltar }} />
        ) : (
          <>
            <div className="flex items-center justify-between gap-3 mb-6 flex-wrap">
              <p className="text-sm text-gray-500">
                <span className="font-bold text-gray-800">{receitasDaSecao.length}</span> receitas
              </p>
              <div className="flex items-center gap-2">
                <span className="text-xs text-gray-400 hidden sm:block">Ordenar:</span>
                <select value={sortBy} onChange={e => setSortBy(e.target.value)}
                        className="text-xs bg-white border border-gray-200 rounded-xl px-3 py-2
                                   text-gray-700 font-medium shadow-sm cursor-pointer
                                   focus:outline-none focus:ring-2 focus:ring-amber-300 transition-all">
                  {SORT_OPTIONS.map(o => (
                    <option key={o.value} value={o.value}>{o.label}</option>
                  ))}
                </select>
              </div>
            </div>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5">
              {sorted.map(receita => (
                <RecipeCard key={receita.id} receita={receita} onClick={setSelectedReceita} />
              ))}
            </div>
          </>
        )}
      </div>

      {selectedReceita && (
        <RecipeDetailModal receita={selectedReceita} onClose={() => setSelectedReceita(null)} />
      )}
    </div>
  )
}

export default function SecoesEspeciais() {
  const [secaoAtiva, setSecaoAtiva] = useState(null)
  const { receitas, loading }       = useReceitas()

  const featuredSecoes = SECOES.filter(s => FEATURED_IDS.includes(s.id))
  const seasonalSecoes = SECOES.filter(s => SEASONAL_IDS.includes(s.id))

  const abrirSecao = (secao) => {
    setSecaoAtiva(secao)
    window.scrollTo({ top: 0, behavior: 'smooth' })
  }

  if (secaoAtiva) {
    return (
      <SecaoDetalhe
        secao={secaoAtiva}
        receitas={receitas}
        onVoltar={() => setSecaoAtiva(null)}
      />
    )
  }

  return (
    <div className="min-h-screen bg-amber-50">
      <div className="bg-white border-b border-gray-100">
        <div className="container-page py-10 md:py-14">
          <div className="max-w-xl">
            <div className="inline-flex items-center gap-2 bg-amber-100 text-amber-700
                            text-xs font-semibold px-3 py-1.5 rounded-full mb-4">
              Categorias especiais
            </div>
            <h1 className="section-title mb-3">Explore por categoria</h1>
            <p className="text-gray-500 leading-relaxed">
              Receitas organizadas por época do ano, ocasião especial e características.
            </p>
          </div>
        </div>
      </div>

      <div className="container-page py-10 space-y-12">
        <div>
          <div className="mb-5">
            <h2 className="font-display font-bold text-gray-800 text-xl mb-1">Destaques</h2>
            <p className="text-sm text-gray-500">Seções mais procuradas</p>
          </div>
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-5">
            {featuredSecoes.map(secao => (
              <SecaoCard key={secao.id} secao={secao}
                         count={loading ? '...' : getReceitasDaSecao(secao, receitas).length}
                         onClick={() => abrirSecao(secao)} featured />
            ))}
          </div>
        </div>

        <div>
          <div className="mb-5">
            <h2 className="font-display font-bold text-gray-800 text-xl mb-1">
              Por época &amp; ocasião
            </h2>
            <p className="text-sm text-gray-500">Receitas organizadas por datas especiais</p>
          </div>
          <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
            {seasonalSecoes.map(secao => (
              <SecaoCard key={secao.id} secao={secao}
                         count={loading ? '...' : getReceitasDaSecao(secao, receitas).length}
                         onClick={() => abrirSecao(secao)} />
            ))}
          </div>
        </div>
      </div>
    </div>
  )
}