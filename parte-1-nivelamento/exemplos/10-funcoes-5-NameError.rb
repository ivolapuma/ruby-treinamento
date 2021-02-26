#
# funcoes - definicao de funcoes
#

#
# assim como variaveis, para usar uma variavel, tem que defini-la antes
#
nome = "Ivo"
puts nome

# se comentar a definicao de nome...
#nome = "Ivo"
puts nome
# aqui vai dar NameError: undefined local variable or method `nome' for main


#
# o mesmo acontece com as funcoes...
#

def f1
    10
end

puts f1

# se chamar f1 antes de defini-la...

puts f1
# aqui vai dar NameError: undefined local variable or method `f1' for main

def f1
    10
end

