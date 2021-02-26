# retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor informado para a função

def converte_anos_em_horas(ano)
    ano * 365.0 * 24.0
end

puts "***"
puts "1 ano tem " + converte_anos_em_horas(1).to_s + " horas"
puts "10 anos tem " + converte_anos_em_horas(10).to_s + " horas"
puts "1.5 ano tem " + converte_anos_em_horas(1.5).to_s + " horas"
puts "0.25 ano tem " + converte_anos_em_horas(0.25).to_s + " horas"

# retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor informado para a função

def converte_decadas_em_minutos(decada)
    decada * 10.0 * 365.0 * 24.0 * 60.0
end

puts "***"
puts "1 decada tem " + converte_decadas_em_minutos(1).to_s + " minutos"
puts "2 decadas tem " + converte_decadas_em_minutos(2).to_s + " minutos"
puts "0.5 decada tem " + converte_decadas_em_minutos(0.5).to_s + " minutos"
puts "0.1 decada tem " + converte_decadas_em_minutos(0.1).to_s + " minutos"

# retornar a idade em valor de segundos, a idade deve ser informada para a função

def converte_anos_em_segundos(ano)
    ano * 365.0 * 24.0 * 60.0 * 60.0
end

puts "***"
puts "22 anos tem " + converte_anos_em_segundos(22).to_s + " segundos"
puts "40 anos tem " + converte_anos_em_segundos(40).to_s + " segundos"
puts "0.2 ano tem " + converte_anos_em_segundos(0.2).to_s + " segundos"

# retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função

def converte_segundos_em_anos(segundo)
    segundo / 60.0 / 60.0 / 24.0 / 365.0
end

puts "***"
puts "1232 milhões de segundos tem " + converte_segundos_em_anos(1_232_000_000).to_s + " anos"
puts "1 milhão de segundos tem " + converte_segundos_em_anos(1_000_000).to_s + " anos"


