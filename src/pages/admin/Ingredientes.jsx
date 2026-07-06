import { useEffect, useState } from 'react'
import { adminApi } from '../../services/api'

export default function Ingredientes() {
  const [lista, setLista] = useState([])
  const [carregando, setCarregando] = useState(true)
  const [erro, setErro] = useState('')
  const [novoNome, setNovoNome] = useState('')
  const [editandoId, setEditandoId] = useState(null)
  const [editandoNome, setEditandoNome] = useState('')

  async function carregar() {
    setCarregando(true)
    try {
      const resposta = await adminApi.get('/admin/ingredientes')
      setLista(resposta.data)
    } catch (err) {
      setErro(err.message)
    } finally {
      setCarregando(false)
    }
  }

  useEffect(() => { carregar() }, [])

  async function handleCriar(e) {
    e.preventDefault()
    if (!novoNome.trim()) return
    try {
      await adminApi.post('/admin/ingredientes', { nome: novoNome.trim() })
      setNovoNome('')
      carregar()
    } catch (err) {
      alert(err.message)
    }
  }

  function iniciarEdicao(item) {
    setEditandoId(item.id)
    setEditandoNome(item.nome)
  }

  async function salvarEdicao(id) {
    try {
      await adminApi.put(`/admin/ingredientes/${id}`, { nome: editandoNome.trim() })
      setEditandoId(null)
      carregar()
    } catch (err) {
      alert(err.message)
    }
  }

  async function excluir(id) {
    if (!confirm('Excluir este ingrediente? Isso remove a associação com receitas também.')) return
    try {
      await adminApi.delete(`/admin/ingredientes/${id}`)
      carregar()
    } catch (err) {
      alert(err.message)
    }
  }

  if (carregando) return <p className="text-neutral-500">Carregando...</p>
  if (erro) return <p className="text-red-600">{erro}</p>

  return (
    <div className="space-y-6">
      <form onSubmit={handleCriar} className="flex gap-2">
        <input
          value={novoNome}
          onChange={(e) => setNovoNome(e.target.value)}
          placeholder="Novo ingrediente..."
          className="flex-1 border border-neutral-300 rounded-lg px-3 py-2 outline-none focus:ring-2 focus:ring-amber-500"
        />
        <button className="bg-amber-600 hover:bg-amber-700 text-white font-semibold rounded-lg px-4">
          Adicionar
        </button>
      </form>

      <div className="bg-white rounded-xl shadow-sm divide-y divide-neutral-100">
        {lista.map((item) => (
          <div key={item.id} className="flex items-center justify-between px-4 py-3">
            {editandoId === item.id ? (
              <input
                value={editandoNome}
                onChange={(e) => setEditandoNome(e.target.value)}
                className="flex-1 border border-neutral-300 rounded-lg px-3 py-1 mr-2 outline-none focus:ring-2 focus:ring-amber-500"
                autoFocus
              />
            ) : (
              <span className="text-neutral-800">{item.nome}</span>
            )}

            <div className="flex gap-3 text-sm">
              {editandoId === item.id ? (
                <>
                  <button onClick={() => salvarEdicao(item.id)} className="text-green-600 font-medium">Salvar</button>
                  <button onClick={() => setEditandoId(null)} className="text-neutral-400">Cancelar</button>
                </>
              ) : (
                <>
                  <button onClick={() => iniciarEdicao(item)} className="text-amber-700 font-medium">Editar</button>
                  <button onClick={() => excluir(item.id)} className="text-red-600 font-medium">Excluir</button>
                </>
              )}
            </div>
          </div>
        ))}

        {!lista.length && (
          <p className="px-4 py-6 text-center text-neutral-400 text-sm">Nenhum ingrediente cadastrado.</p>
        )}
      </div>
    </div>
  )
}