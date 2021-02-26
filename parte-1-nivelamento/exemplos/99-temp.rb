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
