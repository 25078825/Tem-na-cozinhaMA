export const SECOES = [
  {
    id: 'rapidas',
    titulo: 'Receitas Rápidas',
    subtitulo: 'Prontas em até 30 minutos',
    descricao: 'Para quando o tempo é curto mas o sabor maranhense não pode faltar.',
    emoji: '⚡',
    gradient: 'from-amber-400 to-orange-500',
    tipo: 'rapida',
  },
  {
    id: 'festas',
    titulo: 'Típicas de Festa',
    subtitulo: 'Para celebrar em grande estilo',
    descricao: 'Receitas que impressionam qualquer convidado e fazem toda a diferença.',
    emoji: '🎉',
    gradient: 'from-pink-500 to-purple-600',
    tipo: 'tipicaFesta',
  },
  {
    id: 'sao-joao',
    titulo: 'São João',
    subtitulo: 'Sabores das festas juninas',
    descricao: 'As receitas mais queridas das festas juninas maranhenses.',
    emoji: '🎆',
    gradient: 'from-yellow-400 to-red-500',
    tipo: 'ocasiao',
    ocasiao: 'Festa Junina',
  },
  {
    id: 'natal',
    titulo: 'Natal & Ano Novo',
    subtitulo: 'Mesa de celebração',
    descricao: 'Pratos especiais para a ceia e as festas de fim de ano.',
    emoji: '🎄',
    gradient: 'from-red-500 to-green-700',
    tipo: 'ocasiao',
    ocasiao: 'Natal',
  },
  {
    id: 'pascoa',
    titulo: 'Páscoa',
    subtitulo: 'Frutos do mar à mesa',
    descricao: 'Receitas com frutos do mar e pratos leves, perfeitas para a Páscoa.',
    emoji: '🐟',
    gradient: 'from-sky-400 to-teal-500',
    tipo: 'incluirIngredientes',
    ingredientesIncluidos: ['Camarão', 'Camarão seco'],
  },
  {
    id: 'semana-santa',
    titulo: 'Semana Santa',
    subtitulo: 'Tradição à mesa',
    descricao: 'Receitas sem carne vermelha para os dias de reflexão e tradição.',
    emoji: '🙏',
    gradient: 'from-violet-500 to-indigo-600',
    tipo: 'excluirIngredientes',
    ingredientesExcluidos: ['Carne seca', 'Frango', 'Bacon'],
  },
  {
    id: 'dia-a-dia',
    titulo: 'Dia a Dia',
    subtitulo: 'Culinária do cotidiano',
    descricao: 'Receitas práticas para o dia a dia da culinária maranhense.',
    emoji: '🏠',
    gradient: 'from-emerald-400 to-teal-500',
    tipo: 'ocasiao',
    ocasiao: 'Cotidiano',
  },
  {
    id: 'domingo',
    titulo: 'Almoço de Domingo',
    subtitulo: 'Para reunir a família',
    descricao: 'Os pratos especiais que fazem do domingo um dia inesquecível.',
    emoji: '☀️',
    gradient: 'from-orange-400 to-amber-500',
    tipo: 'ocasiao',
    ocasiao: 'Almoço de domingo',
  },
]

/* ── recebe receitas como parâmetro (sem importar mockData) */
export function getReceitasDaSecao(secao, receitas = []) {
  switch (secao.tipo) {
    case 'ocasiao':
      return receitas.filter(r => r.ocasioes?.includes(secao.ocasiao))

    case 'rapida':
      return receitas.filter(r => r.rapida)

    case 'tipicaFesta':
      return receitas.filter(r => r.tipicaFesta)

    case 'incluirIngredientes':
      return receitas.filter(r =>
        secao.ingredientesIncluidos.some(ing => r.ingredientes?.includes(ing))
      )

    case 'excluirIngredientes':
      return receitas.filter(r =>
        !secao.ingredientesExcluidos.some(ing => r.ingredientes?.includes(ing))
      )

    default:
      return []
  }
}