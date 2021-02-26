#
# funcoes - introducao
#

# um programa para calcular IMC

altura = 1.66
peso = 66
# formula do IMC
imc = peso / altura**2  
puts "para altura " + altura + " e peso " + peso + ", o IMC eh igual a " + imc

# isso nao vai funcionar, pois o Ruby nao faz conversao implicita

altura = '1.66'
peso = '66'
# formula do IMC
imc = peso / altura**2  
puts "para altura " + altura + " e peso " + peso + ", o IMC eh igual a " + imc

# tbm nao vai funcionar, pois nao existe operacao de potencia (**) entre strings

# entao vamos resolver isso de um jeito "Rub'esco"

altura = 1.66
peso = 66
# formula do IMC
imc = peso / altura**2  
puts "para altura " + altura.to_s + " e peso " + peso.to_s + ", o IMC eh igual a " + imc.to_s

# o metodo 'to_s()' pode ser acessado a partir de variavel numerica (por meio do operador '.')
# esse metodo vai retornar uma representacao em string do valor contido na variavel

# agora vamos calcular o IMC do meu primo Alex

alturaAlex = 1.8
pesoAlex = 100
imcAlex = pesoAlex / alturaAlex**2
puts "para altura " + alturaAlex.to_s + " e peso " + pesoAlex.to_s + ", o IMC eh igual a " + imcAlex.to_s

# deu certo! mas nao tem algo incomodando aqui?
# o que fazer para calcular de mais pessoas?