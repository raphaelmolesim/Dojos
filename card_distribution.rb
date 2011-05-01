class Array
  def sum() inject(0) { |sum, i| sum + i } end
end

def cria_cartao passagens
  cartao = []
  passagens.each { |passagem| cartao << passagem if cartao.sum + passagem <= 150 }
  cartao.each { |passagem| passagens.delete passagem }
end

passagens = [ 30.98, 95.85, 61.99, 32.99, 64.79, 54.00, 55.00 ]
resultado = [ ]
3.times { resultado << cria_cartao(passagens) }
resultado.each { |cartao| puts "Cartao: #{cartao.join(" ")} => #{cartao.sum}" }
puts "==> Valor total: #{resultado.flatten.sum}"
puts("==> #{passagens.empty? ? 'Todas passagem couberam' : 'Restou #{passagens.size} passagens'}!")