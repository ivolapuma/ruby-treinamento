

def fase_pandemica(taxa_vacinados, fator_transmissao, taxa_ocupacao_leitos)

    if taxa_vacinados < 0 || taxa_vacinados > 1
        return "Parametro taxa_vacinados inválido! Deve ser entre 0 e 1."
    end

    if fator_transmissao < 0
        return "Parametro fator_transmissao inválido! Deve ser maior ou igual a 0."
    end

    if taxa_ocupacao_leitos < 0 || taxa_ocupacao_leitos > 1
        return "Parametro taxa_ocupacao_leitos inválido! Deve ser entre 0 e 1."
    end

    # fase azul
    if taxa_vacinados >= 0.8
        return "AZUL"
    end

    # fase roxa
    if taxa_ocupacao_leitos >= 0.9
        return "ROXA"
    end

    # fase vermelha
    if fator_transmissao >= 1.0 || taxa_ocupacao_leitos >= 0.8
        return "VERMELHA"
    end
    
    # fase laranja
    if taxa_ocupacao_leitos >= 0.65
        return "LARANJA"
    end

    # fase amarela
    if taxa_ocupacao_leitos >= 0.5
        return "AMARELA"
    end

    # fase verde
    if taxa_ocupacao_leitos < 0.5
        return "VERDE"
    end

end

puts "Programa de definição das fases da pandemia"
print "Informe a taxa de vacinados (de 0.0 a 1.0): "
taxa_vacinados = gets.chomp.to_f()
print "Informe o fator de transmissão (ex: 1.0 = 100 infectados transmitem para outros 100): "
fator_transmissao = gets.chomp.to_f()
print "Informe a taxa de ocupação de leitos (de 0.0 a 1.0): "
taxa_ocupacao_leitos = gets.chomp.to_f()

puts "Estamos na fase " + fase_pandemica(taxa_vacinados, fator_transmissao, taxa_ocupacao_leitos)

