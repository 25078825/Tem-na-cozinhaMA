import { useEffect, useState } from 'react'
import { adminApi } from '../../services/api'

const VAZIO = {
  nome: '', descricao: '', emoji: '', categoria: '', tempo_minutos: '',
  tempo: '', porcoes: '', dificuldade: 'Fácil', rapida: false, tipica_festa: false,
  vegano: false, diet: false, destaque: false, imagem_url: '',
  modo_preparo: '', ingredientesTexto: '',
}

export default function Receitas() {
  const [lista, setLista] = useState([])
  const [ingredientesDisponiveis, setIngredientesDisponiveis] = useState([])
  const [carregando, setCarregando] = useState(true)
  const [erro, setErro] = useState('')
  const [modalAberto, setModalAberto] = useState(false)
  const [editandoId, setEditandoId] = useState(null)
  const [form, setForm] = useState(VAZIO)
  const [salvando, setSalvando] = useState(false)

  async function carregar() {
    setCarregando(true)
    try {
      const [receitas, ingredientes] = await Promise.all([
        adminApi.get('/admin/receitas'),
        adminApi.get('/admin/ingredientes'),
      ])
      setLista(receitas.data)
      setIngredientesDisponiveis(ingredientes.data)
    } catch (err) {
      setErro(err.message)
    } finally {
      setCarregando(false)
    }
  }

  useEffect(() => { carregar() }, [])

  function abrirNovo() {
    setEditandoId(null)
    setForm(VAZIO)
    setModalAberto(true)
  }

  async function abrirEdicao(id) {
    const resposta = await adminApi.get(`/admin/receitas/${id}`)
    const r = resposta.data
    setEditandoId(id)
    setForm({
      ...VAZIO,
      ...r,
      modo_preparo: Array.isArray(r.modo_preparo) ? r.modo_preparo.join('\n') : (r.modo_preparo || ''),
      ingredientesTexto: (r.ingredientes || []).map((i) => i.nome).join(', '),
    })
    setModalAberto(true)
  }

  function resolverIngredientes(texto) {
    const nomes = texto.split(',').map((n) => n.trim()).filter(Boolean)
    return nomes
      .map((nome) => ingredientesDisponiveis.find((i) => i.nome.toLowerCase() === nome.toLowerCase()))
      .filter(Boolean)
      .map((i) => ({ id: i.id, opcional: false }))
  }

  async function handleSalvar(e) {
    e.preventDefault()
    setSalvando(true)
    try {
      const payload = {
        ...form,
        tempo_minutos: form.tempo_minutos ? Number(form.tempo_minutos) : null,
        porcoes: form.porcoes ? Number(form.porcoes) : null,
        modo_preparo: form.modo_preparo.split('\n').map((s) => s.trim()).filter(Boolean),
        ingredientes: resolverIngredientes(form.ingredientesTexto),
      }
      delete payload.ingredientesTexto

      if (editandoId) {
        await adminApi.put(`/admin/receitas/${editandoId}`, payload)
      } else {
        await adminApi.post('/admin/receitas', payload)
      }

      setModalAberto(false)
      carregar()
    } catch (err) {
      alert(err.message)
    } finally {
      setSalvando(false)
    }
  }

  async function excluir(id) {
    if (!confirm('Excluir esta receita? Essa ação não pode ser desfeita.')) return
    try {
      await adminApi.delete(`/admin/receitas/${id}`)
      carregar()
    } catch (err) {
      alert(err.message)
    }
  }

  if (carregando) return <p className="text-neutral-500">Carregando...</p>
  if (erro) return <p className="text-red-600">{erro}</p>

  return (
    <div className="space-y-4">
      <div className="flex justify-between items-center">
        <h2 className="font-semibold text-neutral-800">{lista.length} receitas</h2>
        <button
          onClick={abrirNovo}
          className="bg-amber-600 hover:bg-amber-700 text-white font-semibold rounded-lg px-4 py-2 text-sm"
        >
          + Nova receita
        </button>
      </div>

      <div className="bg-white rounded-xl shadow-sm divide-y divide-neutral-100">
        {lista.map((r) => (
          <div key={r.id} className="flex items-center justify-between px-4 py-3">
            <div>
              <span className="font-medium text-neutral-800">{r.emoji} {r.nome}</span>
              <span className="text-neutral-400 text-sm ml-2">{r.categoria}</span>
            </div>
            <div className="flex gap-3 text-sm">
              <button onClick={() => abrirEdicao(r.id)} className="text-amber-700 font-medium">Editar</button>
              <button onClick={() => excluir(r.id)} className="text-red-600 font-medium">Excluir</button>
            </div>
          </div>
        ))}
      </div>

      {modalAberto && (
        <div className="fixed inset-0 bg-black/40 flex items-center justify-center p-4 z-50">
          <form
            onSubmit={handleSalvar}
            className="bg-white rounded-2xl shadow-lg p-6 w-full max-w-lg space-y-3 max-h-[90vh] overflow-y-auto"
          >
            <h3 className="font-bold text-lg text-neutral-800">
              {editandoId ? 'Editar receita' : 'Nova receita'}
            </h3>

            <div className="grid grid-cols-2 gap-3">
              <input placeholder="Nome" required value={form.nome}
                onChange={(e) => setForm({ ...form, nome: e.target.value })}
                className="col-span-2 border rounded-lg px-3 py-2" />

              <input placeholder="Emoji" value={form.emoji}
                onChange={(e) => setForm({ ...form, emoji: e.target.value })}
                className="border rounded-lg px-3 py-2" />

              <input placeholder="Categoria" value={form.categoria}
                onChange={(e) => setForm({ ...form, categoria: e.target.value })}
                className="border rounded-lg px-3 py-2" />

              <input placeholder="Tempo (ex: 30 min)" value={form.tempo}
                onChange={(e) => setForm({ ...form, tempo: e.target.value })}
                className="border rounded-lg px-3 py-2" />

              <input type="number" placeholder="Tempo em minutos" value={form.tempo_minutos}
                onChange={(e) => setForm({ ...form, tempo_minutos: e.target.value })}
                className="border rounded-lg px-3 py-2" />

              <input type="number" placeholder="Porções" value={form.porcoes}
                onChange={(e) => setForm({ ...form, porcoes: e.target.value })}
                className="border rounded-lg px-3 py-2" />

              <select value={form.dificuldade}
                onChange={(e) => setForm({ ...form, dificuldade: e.target.value })}
                className="border rounded-lg px-3 py-2">
                <option>Fácil</option>
                <option>Média</option>
                <option>Difícil</option>
              </select>
            </div>

            <textarea placeholder="Descrição" value={form.descricao}
              onChange={(e) => setForm({ ...form, descricao: e.target.value })}
              className="w-full border rounded-lg px-3 py-2" rows={2} />

            <textarea placeholder="Modo de preparo (um passo por linha)" required value={form.modo_preparo}
              onChange={(e) => setForm({ ...form, modo_preparo: e.target.value })}
              className="w-full border rounded-lg px-3 py-2" rows={4} />

            <input placeholder="Ingredientes (separados por vírgula, use os nomes já cadastrados)"
              value={form.ingredientesTexto}
              onChange={(e) => setForm({ ...form, ingredientesTexto: e.target.value })}
              className="w-full border rounded-lg px-3 py-2" />
            <p className="text-xs text-neutral-400">
              Disponíveis: {ingredientesDisponiveis.map((i) => i.nome).join(', ') || 'nenhum cadastrado ainda'}
            </p>

            <input placeholder="URL da imagem (opcional)" value={form.imagem_url || ''}
              onChange={(e) => setForm({ ...form, imagem_url: e.target.value })}
              className="w-full border rounded-lg px-3 py-2" />

            <div className="flex flex-wrap gap-4 text-sm text-neutral-600 pt-1">
              {['rapida', 'tipica_festa', 'vegano', 'diet', 'destaque'].map((campo) => (
                <label key={campo} className="flex items-center gap-1.5">
                  <input
                    type="checkbox"
                    checked={Boolean(form[campo])}
                    onChange={(e) => setForm({ ...form, [campo]: e.target.checked })}
                  />
                  {campo.replace('_', ' ')}
                </label>
              ))}
            </div>

            <div className="flex justify-end gap-3 pt-3">
              <button type="button" onClick={() => setModalAberto(false)} className="text-neutral-500 px-4 py-2">
                Cancelar
              </button>
              <button type="submit" disabled={salvando}
                className="bg-amber-600 hover:bg-amber-700 disabled:opacity-60 text-white font-semibold rounded-lg px-4 py-2">
                {salvando ? 'Salvando...' : 'Salvar'}
              </button>
            </div>
          </form>
        </div>
      )}
    </div>
  )
}