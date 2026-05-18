const { readFileSync, writeFileSync } = require('fs')
let sql = readFileSync('api/src/database/seeds/receitas.sql', 'utf8')

const fixes = {
  'Arroz de Cuxá': '🍚', 'Arroz de Toucinho': '🍚', 'Arroz Doce com Coco': '🍚',
  'Arroz Doce Maranhense com Leite de Coco': '🍚', 'Arroz Maria Isabel Vegano': '🍚',
  'Baião de Dois Maranhense': '🥘', 'Bolo de Arroz (Orelha de Macaco)': '🎂',
  'Bolo de Tapioca Vegano': '🎂', 'Caldeirada de Camarão': '🦐',
  'Caldo de Frango com Macaxeira': '🍗', 'Camarão Gigante Cozido': '🦐',
  'Compota de Caju': '🍑', 'Cuscuz de Arroz Maranhense': '🍚',
  'Doce de Bacuri': '🍑', 'Doce de Bacuri Vegano': '🍑', 'Doce de Buriti': '🌴',
  'Doce de Cupuaçu': '🍊', 'Doce de Espécie': '🍬',
  'Doce de Espécie de Alcântara Vegano': '🍬', 'Doce de Murici': '🍑',
  'Juçara com Farinha de Puba': '🍵', 'Macaxeira Cozida': '🌿',
  'Manjar de Milho Verde': '🌽', 'Maria Isabel': '🍚', 'Moqueca Maranhense': '🐟',
  'Paçoca de Carne Seca': '🥩', 'Peixada Maranhense': '🐟',
  'Peixe Assado no Azeite de Babaçu': '🐟', 'Peixe Escabeche Maranhense': '🐟',
  'Peixe Frito no Azeite de Babaçu': '🐟', 'Purê de Macaxeira com Azeite de Babaçu': '🌿',
  'Sarapatel': '🍖', 'Sarnambi no Leite de Coco': '🐚', 'Sarrabulho': '🍖',
  'Sorvete Artesanal de Coco Babaçu': '🍦', 'Sorvete de Cupuaçu': '🍊',
  'Sururu ao Leite de Coco': '🐚', 'Torta de Camarão': '🦐',
  'Tripinha Frita': '🍖', 'Vatapá Maranhense': '🥘',
}

function escRe(s) {
  return s.replace(/[-[\]{}()*+?.,\\^$|#]/g, '\\$&')
}

let fixed = 0
for (const [name, emoji] of Object.entries(fixes)) {
  const pat = new RegExp("'" + escRe(name) + "',\\r\\n  '[^']*',\\r\\n  '[^']+'");
  sql = sql.replace(pat, (m) => {
    fixed++
    return m.replace(/'[^']+'$/, "'" + emoji + "'")
  })
}

writeFileSync('api/src/database/seeds/receitas.sql', sql, 'utf8')
console.log('Fixed ' + fixed + ' recipes in seed')
const remaining = (sql.match(/�/gu) || []).length
console.log('Remaining replacement chars: ' + remaining)
