import { useEffect, useState } from 'react'
import { adminApi } from '../../services/api'

const CORES_STATUS = {
  pendente: 'bg-amber-100 text-amber-800',
  aceita: 'bg-green-100 text-green-800',
  rejeitada: 'bg-red-100 text-red-800',
}

export default function Sugestoes() {
  const [lista, setLista] = useState([])
  const [filtro, setFiltro] = useState('pendente')
  const [carregando, setCarregando] = useState(true)
  const [erro, setErro] = useState('')

  async function carregar() {
    setCarregando(true)
    try {
      const query = filtro ? `?status=${filtro}` : ''
      const resposta = await adminApi.get(`/admin/sugestoes${query}`)
      setLista(resposta.data)
    } catch (err) {
      setErro(err.message)
    } finally {
      setCarregando(false)
    }
  }

  useEffect(() => { carregar() }, [filtro])

  async function aceitar(id) {
    if (!confirm('Aceitar esta sugestão? Uma nova receita será criada automaticamente.')) return
    try {
      await adminApi.post(`/admin/sugestoes/${id}/aceitar`, {})
      carregar()
    } catch (err) {
      alert(err.message)
    }
  }

  async function rejeitar(id) {
    if (!confirm('Rejeitar esta sugestão?')) return
    try {
      await adminApi.post(`/admin/sugestoes/${id}/rejeitar`, {})
      carregar()
    } catch (err) {
      alert(err.message)
    }
  }

  return (
    <div className="space-y-4">
      <div className="flex gap-2">
        {['pendente', 'aceita', 'rejeitada', ''].map((s) => (
          <button
            key={s || 'todas'}
            onClick={() => setFiltro(s)}
            className={`text-sm px-3 py-1.5 rounded-full font-medium transition ${
              filtro === s ? 'bg-neutral-800 text-white' : 'bg-white text-neutral-500 border border-neutral-200'
            }`}
          >
            {s ? s[0].toUpperCase() + s.slice(1) : 'Todas'}
          </button>
        ))}
      </div>

      {carregando && <p className="text-neutral-500">Carregando...</p>}
      {erro && <p className="text-red-600">{erro}</p>}

      <div className="space-y-3">
        {lista.map((s) => (
          <div key={s.id} className="bg-white rounded-xl shadow-sm p-4 space-y-2">
            <div className="flex items-start justify-between">
              <div>
                <h3 className="font-semibold text-neutral-800">{s.nome}</h3>
                {s.descricao && <p className="text-sm text-neutral-500">{s.descricao}</p>}
              </div>
              <span className={`text-xs font-medium px-2 py-1 rounded-full ${CORES_STATUS[s.status]}`}>
                {s.status}
              </span>
            </div>

            <details className="text-sm text-neutral-600">
              <summary className="cursor-pointer text-amber-700">Ver detalhes</summary>
              <p className="mt-2 whitespace-pre-wrap"><strong>Ingredientes:</strong> {s.ingredientes}</p>
              <p className="mt-2 whitespace-pre-wrap"><strong>Modo de preparo:</strong> {s.modo_preparo}</p>
              {s.email_autor && <p className="mt-2"><strong>E-mail do autor:</strong> {s.email_autor}</p>}
            </details>

            {s.status === 'pendente' && (
              <div className="flex gap-3 pt-2">
                <button
                  onClick={() => aceitar(s.id)}
                  className="text-sm bg-green-600 hover:bg-green-700 text-white font-medium px-3 py-1.5 rounded-lg"
                >
                  Aceitar
                </button>
                <button
                  onClick={() => rejeitar(s.id)}
                  className="text-sm bg-red-600 hover:bg-red-700 text-white font-medium px-3 py-1.5 rounded-lg"
                >
                  Rejeitar
                </button>
              </div>
            )}
          </div>
        ))}

        {!carregando && !lista.length && (
          <p className="text-center text-neutral-400 text-sm py-6">Nenhuma sugestão encontrada.</p>
        )}
      </div>
    </div>
  )
}