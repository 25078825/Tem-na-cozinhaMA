const BASE_URL = import.meta.env.VITE_API_URL || 'http://localhost:3333'

function getToken() {
  return localStorage.getItem('admin_token')
}

async function request(path, options = {}) {
  const res = await fetch(`${BASE_URL}${path}`, options)

  if (!res.ok) {
    const err = await res.json().catch(() => ({}))
    throw new Error(err.message || `Erro ${res.status} em ${path}`)
  }

  return res.json()
}

async function requestAuth(path, options = {}) {
  const token = getToken()
  return request(path, {
    ...options,
    headers: {
      ...(options.headers || {}),
      Authorization: `Bearer ${token}`,
    },
  })
}

export const api = {
  get:  (path) => request(path),
  post: (path, body) => request(path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body),
  }),
}

export const adminApi = {
  login: (email, senha) => api.post('/auth/login', { email, senha }),

  get:    (path)       => requestAuth(path),
  post:   (path, body) => requestAuth(path, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body),
  }),
  put:    (path, body) => requestAuth(path, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(body),
  }),
  delete: (path)       => requestAuth(path, { method: 'DELETE' }),
}