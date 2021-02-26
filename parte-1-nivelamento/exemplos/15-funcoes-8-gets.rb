#
# funcoes - gets
#

print "Digite algo: "
x = gets
print "Vc digitou: ", x
puts x.class

# gets eh um metodo básico do Ruby que retorna uma uma string informada pela entrada padrão do sistema

# com gets conseguiremos tornar mais interessantes os exemplos que estamos estudando aqui...

def calcula_imc(peso, altura)
    peso / altura**2
end

puts "Bem-vindo ao programa para cálculo de IMC!"
puts "Qual o seu nome?"
print ": "
nome = gets

puts nome + ", qual o seu peso?"
print ": "
peso = gets

puts "E sua altura?"
print ": "
altura = gets

imc = calcula_imc peso, altura

puts nome + ", seu IMC eh igual a " + imc

# Dois problemas:
# 1) in `calcula_imc': undefined method `**' for "1.66\n":String (NoMethodError)
# 2) a quebra de linha ao exibir o que foi digitado via gets

# gets retorna uma string e a operaçao realizada no metodo calcula_imc espera que os valores sejam numeros
# como sao strings, ele tenta fazer a operacao '**' (e depois faria '\')
# porem, como nao existe essa operacao para string, dá o NoMethodError...

# assim como usamos o metodo to_s() para converter um valor numerico para string (exemplos anteriores)
# teremos aqui que usar alguma coisa para converter a string para numero
# no Ruby, existe o metodo to_i(), que pode ser acessado a partir de uma variavel string

# vamos ajustar o programa para converter os valores lidos de string para numero...

def calcula_imc(peso, altura)
    peso / altura**2
end

puts "Bem-vindo ao programa para cálculo de IMC!"
puts "Qual o seu nome?"
print ": "
nome = gets

puts nome + ", qual o seu peso?"
print ": "
peso = gets

puts "E sua altura?"
print ": "
altura = gets

# imc = calcula_imc peso.to_i, altura.to_i  # 1o com essa linha descomentada
imc = calcula_imc peso.to_i, altura.to_f  # depois de ver o problem com to_i(), colocar essa linha

puts nome + ", seu IMC eh igual a " + imc.to_s


# mas o cálculo parece estar errado, não?
# (esperar para ver se alguém percebe o problema)

peso = "66"
puts peso
puts peso.to_i

altura = "1.66"
puts altura
puts altura.to_i
puts altura.to_f  # converte de string para float


# muito bem! o cálculo está correto agora, mas ainda tem algo estranho...
# # (esperar para ver se alguém percebe o problema)

# tá quebrando linha quando exibe o 'nome' concatenado com outra string nas linhas com 'puts', pq?

print "Digite algo: "
x = gets
print x
puts x
p x  

# o metodo 'p', retorna uma representaçao em forma de string do objeto (ops!, spoiler) informado

# lembram do caracter de escape?
# o '\n' eh a quebra de linha, representado pelo ENTER que o 'gets' capturou...

# para mitigar isso, no Ruby, tem um metodo chamado 'chomp', que pode ser acessado de qualquer string
# e que remove o último caracter da string

print "Digite novamente: "
x = gets.chomp
print x
puts x
p x  


# entao vamos agora realizar o ajuste final no nosso programa para ficar zero bala!

def calcula_imc(peso, altura)
    peso / altura**2
end

puts "Bem-vindo ao programa para cálculo de IMC!"
puts "Qual o seu nome?"
print ": "
nome = gets.chomp

puts nome + ", qual o seu peso?"
print ": "
peso = gets.chomp

puts "E sua altura?"
print ": "
altura = gets.chomp

imc = calcula_imc peso.to_i, altura.to_f

puts nome + ", seu IMC eh igual a " + imc.to_s

# WOW! agora funcionou direitinho!
