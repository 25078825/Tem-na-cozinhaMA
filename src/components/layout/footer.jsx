import { Link } from 'react-router-dom'

export default function Footer() {
  return (
    <footer className="bg-white border-t border-amber-100 mt-auto">
      <div className="container-page py-10">
        <div className="grid grid-cols-1 md:grid-cols-3 gap-8">

          <div>
            <div className="flex items-center gap-2.5 mb-3">
              <div className="w-8 h-8 bg-amber-500 rounded-lg flex items-center justify-center text-sm shadow-sm">
                🍳
              </div>
              <div className="leading-none">
                <p className="font-bold text-gray-800 font-display text-sm">Tem na Cozinha</p>
                <p className="text-[10px] text-amber-500 font-bold uppercase tracking-widest">Maranhão</p>
              </div>
            </div>
            <p className="text-sm text-gray-500 leading-relaxed">
              Descubra receitas maranhenses incríveis com os ingredientes que você já tem em casa.
            </p>
          </div>

          <div>
            <h3 className="text-xs font-bold text-gray-700 uppercase tracking-wider mb-3">
              Navegar
            </h3>
            <ul className="space-y-2">
              <li>
                <Link to="/"
                  className="text-sm text-gray-500 hover:text-amber-500 transition-colors">
                  Início
                </Link>
              </li>
              <li>
                <Link to="/buscar"
                  className="text-sm text-gray-500 hover:text-amber-500 transition-colors">
                  Buscar Receitas
                </Link>
              </li>
            </ul>
          </div>

          <div>
            <h3 className="text-xs font-bold text-gray-700 uppercase tracking-wider mb-3">
              Sobre o projeto
            </h3>
            <p className="text-sm text-gray-500 leading-relaxed">
              Um projeto dedicado à culinária maranhense, preservando e divulgando os sabores do Maranhão para o Brasil e o mundo.
            </p>
          </div>
        </div>

        <div className="border-t border-gray-100 mt-8 pt-6 flex flex-col sm:flex-row
                        justify-between items-center gap-2">
          <p className="text-xs text-gray-400">
            © 2025 Tem na Cozinha MA. Todos os direitos reservados.
          </p>
          <p className="text-xs text-gray-400 flex items-center gap-1">
            Feito com <span className="text-amber-400">❤️</span> no Maranhão
          </p>
        </div>
      </div>
    </footer>
  )
}