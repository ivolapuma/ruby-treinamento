#
# funcoes
#

# para declarar funcoes (ou metodos) no Ruby, usa-se o comando 'def'

def f1
    return 10
end

puts f1()
puts f1  # no Ruby, os parenteses sao opcionais

# se liga nisso aqui...

def f2
    # o comando 'return' pode ser omitido
    100
end

puts f2

# agora, prestencao nisso aqui...

def f3
    puts 1000
end

f3
# e assim?
puts f3

# parece que tem uma linha vazia a mais no final, né?

# vamos fazer um teste...
puts "ao chamar f3, retorna..." + f3
# isso dá TypeError --> no implicit conversion of nil into String

x = f3
puts x

# quando uma funcao nao retorna valor, ela retorna, na verdade, 'nil'
# em breve vamos ver mais sobre o 'nil'

#
# agora vamos aprofundar no assunto funcoes...
#

def somar(x, y)
    x + y
    # poderia escrever...
    # 'return x + y'
    # mas já vimos que podemos omitir o 'return'
end

puts somar(1, 2)
puts somar 10, 20

# o que vai dentro dos parenteses apos o nome da funcao chamados de parametros (ou argumentos)
# cada parametro deve ter um nome (como uma variavel) e dentro da funcao, o parametro sera
# referenciado como uma variavel (local) qualquer

def soma_1(x)
    x = x + 1  # o parametro x eh uma variavel qualquer, eu posso manipula-la
    return x
    # mas vcs ja perceberam que eu poderia escrever de outra forma...
    # 'x + 1'
end

puts soma_1 10

# por falar em variaveis...
def f4(x)
    y = 100    # 'y' eh uma variavel criada dentro da funcao (uma variavel local)
    z = x + y  # e 'z' eh outra variavel local
    z  # ja sabem, o 'return' pode ser omitido
end

puts f4 10

# uma funcao realiza um algoritmo
# que pode ou nao receber uma entrada (definida nos parametros)
# e pode ou nao retornar uma saida (no caso do Ruby, vai retornar 'nil')
