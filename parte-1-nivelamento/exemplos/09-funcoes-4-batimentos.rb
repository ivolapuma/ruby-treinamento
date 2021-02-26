#
# funcoes - resolvendo nossos problemas 2
#

# vamos calcular quantos dias uma pessoa viveu, com base na sua idade
def converte_anos_para_dias(ano)
    return ano * 365
end

puts converte_anos_para_dias(22)

# agora vamos calcular quantas vezes o coracao de uma pessoa ja bateu na vida (uma estimativa)
# a funcao vai receber a idade da pessoa e a media de batimentos / minuto
def calcula_batimentos_cardiacos(idade, batimentos_minuto)
    dias = converte_anos_para_dias(idade)
    return dias * 24 * 60 * batimentos_minuto
end

puts calcula_batimentos_cardiacos(22, 80)


