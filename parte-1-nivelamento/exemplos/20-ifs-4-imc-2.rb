#
# estruturas de decisao - nova versao do programa de IMC
#


# vamos pegar aquele exemplo do calculo de IMC e vamos informar o usuario se o IMC dele esta
# acima do limite de obesidade, ou abaixo do limite de magreza, ou se esta considerado saudavel
# pelos parametros dos especialistas

# limite obesidade = 35
# limite magreza = 18.5

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

if imc >= 35
    puts "E como está acima de 35, está acima do limite de obesidade severa, procure um especialista!"
elsif imc <= 18.5
    puts "E como está abaixo de 18.5, está abaixo do limite de magreza severa, procure um especialista!"
else
    puts "E está dentro dos limites considerados saudáveis!"    
end