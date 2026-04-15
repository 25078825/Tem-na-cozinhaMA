import { useState, useMemo } from 'react'
import { useReceitas } from './useReceitas'

const FILTROS_INICIAIS = {
  busca:       '',
  categoria:   'Todos',
  dificuldade: [],
  ocasioes:    [],
  tempo:       null,
  rapida:      false,
  tipicaFesta: false,
  ingredientes: [],
}

export function useFiltros() {
  const [filtros, setFiltros] = useState(FILTROS_INICIAIS)
  const { receitas, loading, error } = useReceitas()

  /* ── Setters ─────────────────────────────────────────── */

  function setFiltro(campo, valor) {
    setFiltros(prev => ({ ...prev, [campo]: valor }))
  }

  function toggleDificuldade(nivel) {
    setFiltros(prev => ({
      ...prev,
      dificuldade: prev.dificuldade.includes(nivel)
        ? prev.dificuldade.filter(d => d !== nivel)
        : [...prev.dificuldade, nivel],
    }))
  }

  function toggleOcasiao(ocasiao) {
    setFiltros(prev => ({
      ...prev,
      ocasioes: prev.ocasioes.includes(ocasiao)
        ? prev.ocasioes.filter(o => o !== ocasiao)
        : [...prev.ocasioes, ocasiao],
    }))
  }

  function adicionarIngrediente(ing) {
    setFiltros(prev => {
      if (prev.ingredientes.includes(ing)) return prev
      return { ...prev, ingredientes: [...prev.ingredientes, ing] }
    })
  }

  function removerIngrediente(ing) {
    setFiltros(prev => ({
      ...prev,
      ingredientes: prev.ingredientes.filter(i => i !== ing),
    }))
  }

  function limparIngredientes() {
    setFiltros(prev => ({ ...prev, ingredientes: [] }))
  }

  function limparFiltros() {
    setFiltros(FILTROS_INICIAIS)
  }

  /* ── Filtragem ───────────────────────────────────────── */

  const todasFiltradas = useMemo(() => {
    return receitas.filter(r => {
      if (filtros.busca &&
          !r.nome.toLowerCase().includes(filtros.busca.toLowerCase())) return false

      if (filtros.categoria !== 'Todos' &&
          r.categoria !== filtros.categoria) return false

      if (filtros.dificuldade.length &&
          !filtros.dificuldade.includes(r.dificuldade)) return false

      if (filtros.ocasioes.length &&
          !filtros.ocasioes.some(o => r.ocasioes?.includes(o))) return false

      if (filtros.rapida      && !r.rapida)      return false
      if (filtros.tipicaFesta && !r.tipicaFesta) return false

      if (filtros.tempo) {
        if (filtros.tempo === '30'   && r.tempo_minutos > 30)  return false
        if (filtros.tempo === '60'   && r.tempo_minutos > 60)  return false
        if (filtros.tempo === 'mais' && r.tempo_minutos <= 60) return false
      }

      return true
    })
  }, [receitas, filtros])

  /* ── Match com ingredientes ──────────────────────────── */

  const { receitasCompletas, receitasQuase } = useMemo(() => {
    if (!filtros.ingredientes.length) {
      return { receitasCompletas: [], receitasQuase: [] }
    }

    const userIngs = filtros.ingredientes.map(i => i.toLowerCase())

    const comMatch = todasFiltradas.map(r => {
      // r.ingredientes já é array de strings (obrigatórios) — normalizado em useReceitas
      const possuidos = r.ingredientes.filter(ing =>
        userIngs.includes(ing.toLowerCase())
      )
      const faltando = r.ingredientes.length - possuidos.length
      return { ...r, faltando }
    })

    return {
      receitasCompletas: comMatch.filter(r => r.faltando === 0),
      receitasQuase:     comMatch.filter(r => r.faltando > 0 && r.faltando <= 3),
    }
  }, [todasFiltradas, filtros.ingredientes])

  /* ── Contadores ──────────────────────────────────────── */

  const temFiltrosAtivos = useMemo(() =>
    filtros.busca !== ''       ||
    filtros.categoria !== 'Todos' ||
    filtros.dificuldade.length > 0 ||
    filtros.ocasioes.length > 0    ||
    filtros.tempo !== null         ||
    filtros.rapida                 ||
    filtros.tipicaFesta
  , [filtros])

  const contadorFiltrosAtivos = useMemo(() => {
    let c = 0
    if (filtros.busca)               c++
    if (filtros.categoria !== 'Todos') c++
    if (filtros.dificuldade.length)  c++
    if (filtros.ocasioes.length)     c++
    if (filtros.tempo)               c++
    if (filtros.rapida)              c++
    if (filtros.tipicaFesta)         c++
    if (filtros.ingredientes.length) c++
    return c
  }, [filtros])

  return {
    filtros,
    setFiltro,
    toggleDificuldade,
    toggleOcasiao,
    adicionarIngrediente,
    removerIngrediente,
    limparIngredientes,
    limparFiltros,
    temFiltrosAtivos,
    contadorFiltrosAtivos,
    receitasCompletas,
    receitasQuase,
    todasFiltradas,
    loading,
    error,
  }
}