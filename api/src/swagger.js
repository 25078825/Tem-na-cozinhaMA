import swaggerJsdoc from 'swagger-jsdoc'

const options = {
  definition: {
    openapi: '3.0.0',
    info: {
      title: 'Tem na Cozinha MA — API',
      version: '1.0.0',
      description: 'API REST da plataforma de receitas típicas maranhenses.',
    },
    servers: [
      { url: 'https://temnacozinhaapi.duckdns.org', description: 'Produção' },
      { url: 'http://localhost:3333', description: 'Local' },
    ],
    components: {
      schemas: {
        Receita: {
          type: 'object',
          properties: {
            id:          { type: 'integer', example: 1 },
            nome:        { type: 'string',  example: 'Arroz de Cuxá' },
            descricao:   { type: 'string' },
            emoji:       { type: 'string',  example: '🍚' },
            categoria:   { type: 'string',  enum: ['Prato Principal','Acompanhamento','Sobremesa','Entrada'] },
            tempo:       { type: 'string',  example: '30 min' },
            tempo_minutos: { type: 'integer', example: 30 },
            porcoes:     { type: 'integer', example: 4 },
            dificuldade: { type: 'string',  enum: ['Fácil','Média','Difícil'] },
            rapida:      { type: 'boolean' },
            tipica_festa:{ type: 'boolean' },
            vegano:      { type: 'boolean' },
            diet:        { type: 'boolean' },
            destaque:    { type: 'boolean' },
            ocasioes:    { type: 'array', items: { type: 'string' } },
            ingredientes:{ type: 'array', items: { $ref: '#/components/schemas/Ingrediente' } },
            modo_preparo:{ type: 'array', items: { type: 'string' } },
            imagem_url:  { type: 'string' },
          },
        },
        Ingrediente: {
          type: 'object',
          properties: {
            nome:     { type: 'string', example: 'Arroz' },
            opcional: { type: 'boolean', example: false },
          },
        },
        Erro: {
          type: 'object',
          properties: {
            success: { type: 'boolean', example: false },
            message: { type: 'string',  example: 'Mensagem de erro.' },
          },
        },
      },
    },
  },
  apis: ['./src/routes/*.js'],
}

export const swaggerSpec = swaggerJsdoc(options)
