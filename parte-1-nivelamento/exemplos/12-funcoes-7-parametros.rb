#
# funcoes - argumentos
#

def f1(x)
    x = x + 10
    return x
end

numero = 10
puts numero
puts f1(numero)

# o que sera impresso nessa linha?
puts numero


# a funcao recebe um valor de uma variavel por parametro e pode fazer o que quiser dentro dela
# que o valor da variavel fora da funcao nao será alterado!

def f2(s)
    s = 'mudei!'
    return s
end    

s = 'abcde'
puts s
puts f2(s)
puts s


#
# funcoes - argumentos avançado (spoiler, parte 2)
#

# mas isso nao vale para tudo!
# veja isso...

def f2(s)
    s[0] = 'x'
    s[1] = 'x'
    return s
end

s = 'abcde'
puts s
puts f2(s)
puts s

