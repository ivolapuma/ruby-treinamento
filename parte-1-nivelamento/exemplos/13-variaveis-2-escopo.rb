#
# variaveis - escopo de variaveis
#

numero = 0
puts numero

def f1
    numero = 1
    puts numero
end

f1()

# o que sera impresso nessa linha?
# ou será que vai dar erro?
puts numero


#
# posso ter n funcoes diferentes com variaveis locais de mesmo nome, nao tem problema!
# a variavel local tem escopo somente dentro da funcao
#

numero = 0
puts numero

def f1
    numero = 1
    puts numero
end

def f2
    numero = 2
    puts numero
end

def f3
    numero = 3
    puts numero
end

f1()
f2()
f3()

puts numero


#
# agora vejamos essa situação...
#

def f1
    numero = 10
    return numero
end

# o que sera impresso nessa linha?
# ou será que vai dar erro?
puts numero
# vai dar NameError: undefined local variable or method `numero' for main
