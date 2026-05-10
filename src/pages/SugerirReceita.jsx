import { useState } from 'react'
import { api } from '../services/api'

const FIELD = 'w-full px-4 py-3 text-sm bg-gray-50 border border-gray-200 rounded-xl ' +
              'placeholder-gray-400 text-gray-700 focus:outline-none focus:ring-2 ' +
              'focus:ring-amber-300 focus:border-amber-400 transition-all'

export default function SugerirReceita() {
  const [form, setForm] = useState({
    nome: '', descricao: '', ingredientes: '', modoPreparo: '',
    nomeAutor: '', emailAutor: '', cpfAutor: '',
  })
  const [status, setStatus] = useState(null) // null | 'sending' | 'ok' | 'erro'

  function set(field) {
    return e => setForm(f => ({ ...f, [field]: e.target.value }))
  }

  async function handleSubmit(e) {
    e.preventDefault()
    setStatus('sending')
    try {
      await api.post('/sugestoes', form)
      setStatus('ok')
      setForm({ nome: '', descricao: '', ingredientes: '', modoPreparo: '', nomeAutor: '', emailAutor: '', cpfAutor: '' })
    } catch {
      setStatus('erro')
    }
  }

  return (
    <div className="container-page py-10 max-w-2xl mx-auto">

      {/* Cabeçalho */}
      <div className="mb-8">
        <h1 className="font-display font-bold text-3xl text-gray-900 mb-2">
          Sugerir uma receita
        </h1>
        <p className="text-gray-500 text-sm leading-relaxed">
          Conhece uma receita maranhense que não está aqui? Conta pra gente!
          Vamos analisar e adicionar ao site.
        </p>
      </div>

      {status === 'ok' ? (
        <div className="bg-green-50 border border-green-200 rounded-2xl p-8 text-center">
          <span className="text-5xl block mb-4">🎉</span>
          <h2 className="font-display font-bold text-xl text-green-800 mb-2">
            Sugestão enviada!
          </h2>
          <p className="text-green-700 text-sm mb-6">
            Obrigado pela contribuição. Vamos analisar e adicionar em breve.
          </p>
          <button
            onClick={() => setStatus(null)}
            className="btn-primary px-6 py-2.5 text-sm"
          >
            Sugerir outra receita
          </button>
        </div>
      ) : (
        <form onSubmit={handleSubmit} className="space-y-5">

          {/* Nome da receita */}
          <div>
            <label className="block text-xs font-bold text-gray-500 uppercase tracking-wider mb-1.5">
              Nome da receita *
            </label>
            <input
              type="text"
              value={form.nome}
              onChange={set('nome')}
              placeholder="Ex: Carne de sol com macaxeira"
              className={FIELD}
              required
              maxLength={150}
            />
          </div>

          {/* Descrição */}
          <div>
            <label className="block text-xs font-bold text-gray-500 uppercase tracking-wider mb-1.5">
              Descrição breve
            </label>
            <input
              type="text"
              value={form.descricao}
              onChange={set('descricao')}
              placeholder="Uma frase sobre o prato (opcional)"
              className={FIELD}
              maxLength={300}
            />
          </div>

          {/* Ingredientes */}
          <div>
            <label className="block text-xs font-bold text-gray-500 uppercase tracking-wider mb-1.5">
              Ingredientes *
            </label>
            <textarea
              value={form.ingredientes}
              onChange={set('ingredientes')}
              placeholder={"Ex:\n500g de carne de sol\n2 dentes de alho\n1 cebola grande"}
              className={FIELD + ' resize-none'}
              rows={5}
              required
            />
          </div>

          {/* Modo de preparo */}
          <div>
            <label className="block text-xs font-bold text-gray-500 uppercase tracking-wider mb-1.5">
              Modo de preparo *
            </label>
            <textarea
              value={form.modoPreparo}
              onChange={set('modoPreparo')}
              placeholder={"Ex:\n1. Dessalgue a carne por 2 horas\n2. Frite em manteiga de garrafa..."}
              className={FIELD + ' resize-none'}
              rows={7}
              required
            />
          </div>

          {/* Divisor */}
          <div className="border-t border-gray-100 pt-5">
            <p className="text-xs text-gray-400 mb-4">
              Opcional — para darmos crédito a você
            </p>
            <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
              <div>
                <label className="block text-xs font-bold text-gray-500 uppercase tracking-wider mb-1.5">
                  CPF
                </label>
                <input
                  type="text"
                  value={form.cpfAutor}
                  onChange={set('cpfAutor')}
                  placeholder="000.000.000-00"
                  className={FIELD}
                  maxLength={14}
                />
              </div>
              <div>
                <label className="block text-xs font-bold text-gray-500 uppercase tracking-wider mb-1.5">
                  Seu e-mail
                </label>
                <input
                  type="email"
                  value={form.emailAutor}
                  onChange={set('emailAutor')}
                  placeholder="email@exemplo.com"
                  className={FIELD}
                />
              </div>
            </div>
          </div>

          {status === 'erro' && (
            <p className="text-sm text-red-500 bg-red-50 border border-red-100 rounded-xl px-4 py-3">
              Erro ao enviar. Tente novamente em alguns instantes.
            </p>
          )}

          <button
            type="submit"
            disabled={status === 'sending'}
            className="w-full btn-primary py-3 text-sm font-semibold
                       disabled:opacity-60 disabled:cursor-not-allowed"
          >
            {status === 'sending' ? 'Enviando...' : 'Enviar sugestão'}
          </button>
        </form>
      )}
    </div>
  )
}
