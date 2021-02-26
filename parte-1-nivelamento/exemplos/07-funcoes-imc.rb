#
# funcoes - resolvendo nossos problemas
#

# uma funcao para calcula IMC

def calcula_imc(peso, altura)
    peso / altura**2
end

altura = 1.66
peso = 66
imc = calcula_imc(peso, altura)
puts "para altura " + altura.to_s + " e peso " + peso.to_s + ", o IMC eh igual a " + imc.to_s

# e o IMC do meu primo Alex?

altura = 1.8
peso = 100
imc = calcula_imc(peso, altura)
puts "para altura " + altura.to_s + " e peso " + peso.to_s + ", o IMC eh igual a " + imc.to_s

# nao ficou melhor?
# se houver uma mudança na formula de calculo do IMC, bastará alterar somente a definicao da funcao 'calcula_imc'