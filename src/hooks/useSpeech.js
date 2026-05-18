import { useState, useEffect, useCallback } from 'react'

export function useSpeech() {
  const [falando, setFalando] = useState(false)
  const suportado = typeof window !== 'undefined' && 'speechSynthesis' in window

  function getVozPT() {
    const voices = window.speechSynthesis.getVoices()
    return voices.find(v => v.lang === 'pt-BR')
        || voices.find(v => v.lang.startsWith('pt'))
        || null
  }

  const parar = useCallback(() => {
    window.speechSynthesis?.cancel()
    setFalando(false)
  }, [])

  const falar = useCallback((texto) => {
    if (!suportado) return
    window.speechSynthesis.cancel()

    const utter = new SpeechSynthesisUtterance(texto)
    utter.lang  = 'pt-BR'
    utter.rate  = 0.88
    utter.pitch = 1

    const voz = getVozPT()
    if (voz) utter.voice = voz

    utter.onstart = () => setFalando(true)
    utter.onend   = () => setFalando(false)
    utter.onerror = () => setFalando(false)

    window.speechSynthesis.speak(utter)
  }, [suportado])

  useEffect(() => () => window.speechSynthesis?.cancel(), [])

  return { falar, parar, falando, suportado }
}
