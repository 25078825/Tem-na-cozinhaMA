const BASE_URL = import.meta.env.VITE_API_URL || 'http://localhost:3333'

async function request(path) {
  const res = await fetch(`${BASE_URL}${path}`)

  if (!res.ok) {
    const err = await res.json().catch(() => ({}))
    throw new Error(err.message || `Erro ${res.status} em ${path}`)
  }

  return res.json()
}

export const api = {
  get: (path) => request(path),
}