def diametro_circulo(raio)
    return raio * 2
end

def comprimento_circulo(raio)
    return diametro_circulo raio * Math::PI
end

def area_circulo(raio)
    return Math::PI * raio**2
end

print "Digite o raio do circulo (em m): "
raio = gets.chomp()

puts "Diametro    : " + diametro_circulo(raio)
puts "Comprimento : " + comprimento_circulo(raio)
puts "Area        : " + area_circulo(raio)



def converte_anos_para_dias(ano)
    return ano * 365
end

def calcula_batimentos_cardiacos(idade, batimentos_minuto)
    dias = converte_anos_para_dias(idade)
    return dias * 24 * 60 * batimentos_minuto
end

print "Digite sua idade: "
idade = gets.chomp.to_f()

print "Digite a media de batimentos cardiacos por minuto: "
batimentos = gets.chomp.to_f()

puts "Vc ja viveu " + converte_anos_para_dias(idade).to_s() + " dias!"
puts "Seu coracao ja bateu " + calcula_batimentos_cardiacos(idade, batimentos).to_s() + " vezes!"