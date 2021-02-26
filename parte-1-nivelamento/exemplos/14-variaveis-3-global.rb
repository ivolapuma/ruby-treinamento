#
# variaveis - variaveis globais
#

#
# vejamos essa situação...
#
x = 1

def f1
    y = 10
    return x + y
end

def f2
    y = 100
    return x + y
end

puts x
puts f1 # vai dar NameError aqui! --> undefined local variable or method `x' for main
puts f2


# o erro ocorre pq a variavel 'x' nao foi definida no contexto da funcao 'f1'
# o Ruby espera que 'x' seja um variavel local para poder usa-la


# no Ruby, eh possivel definir variaveis globais que podem ser acessadas em qualquer ponto do programa
# para declarar uma variavel global, use '$' no inicio da variavel

$x = 1

def f1
    y = 10
    return $x + y
end

def f2
    y = 100
    return $x + y
end

puts $x
puts f1
puts f2


# assim, se a variavel global tiver o valor alterado dentro da funçao
# esse valor permanecerá alterado após o término da funcao

$x = 0

def f1
    $x = 1
    y = 10
    return $x + y
end

def f2
    $x = 2
    y = 100
    return $x + y
end

puts $x
puts f1
puts f2
puts $x

#
# agora, vamos ver essa situaçao....
#

def f1
    $x = 10
    puts $x
end

f1
# o que vai acontecer nessa linha?
puts $x


#
# e se tentarmos acessar a variavel $x sem chamar f1 antes?
#

def f1
    $x = 10
    puts $x
end

puts $x
puts $x == nil

# se uma variavel global foi definida dentro de uma funcao, ela so vai ter o valor ali definido
# quando a funcao for chamada
# até lá, a variavel fica com o valor 'nil'


#
# e se tentarmos acessar a variavel $x antes de definir f1?
#

puts $x
puts $x == nil

def f1
    $x = 10
    puts $x
end

f1
puts $x
puts $x == nil


#
# e se fizermos somente assim?
#

puts $x
puts $x == nil

# no Ruby, variaveis globais podem ser acessadas em qualquer ponto
# e na 1a vez que a variavel global eh referenciada, o Ruby definirá o valor 'nil'


# IMPORTANTE: por boas práticas de programaçao, deve-se evitar o uso de variáveis globais!
# - variaveis globais tornam a legibilidade do código mais difícil
# - e encarecem a manutencao do código

