# operadores sao metodos...

class Integer
  # vc pode fazer isso, mas nao deve!
  def +(inteiro); self - inteiro; end
end

if __FILE__ == $0
  n = 10
  n2 = n + 5
  puts "deve ser 15 ou 5?", n2
end