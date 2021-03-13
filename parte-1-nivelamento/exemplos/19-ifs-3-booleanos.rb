#
# estruturas de decisao - booleanos
#

puts 1 == 1
puts 1 == 2

x = 1 == 1
puts x
puts x.class
y = 1 == 2
puts y
puts y.class

x = 1 == 1
if x
    puts "x eh igual a true"
else
    puts "x NAO eh igual a true (ou seja, eh false)"
end

# eh a mesma coisa que...

x = 1 == 1
if x == true
    puts "x eh igual a true"
else
    puts "x NAO eh igual a true (ou seja, eh false)"
end


# vamos fazer um programa para verificar se uma letra eh vogal

letra = 'b'

if letra == 'a'
    puts 'letra eh vogal'
elsif letra == 'e'
    puts 'letra eh vogal'
elsif letra == 'i'
    puts 'letra eh vogal'
elsif letra == 'o'
    puts 'letra eh vogal'
elsif letra == 'u'
    puts 'letra eh vogal'
else
    puts 'letra NAO EH vogal'
end

# vamos ler o programa... será que dá para escrever isso de maneira mais simples? (dá, sim!)

letra = 'b'

if letra == 'a' || letra == 'e' || letra == 'i' || letra == 'o' || letra == 'u'
    puts 'letra eh vogal'
else
    puts 'letra NAO EH vogal'
end


# || eh o operador OU lógico... existe tbm o operador E lógico...


# vamos fazer um programa para verificar se um numero eh positvo e tbm par

numero = -1

if numero > 0
    if numero % 2 == 0
        puts "Numero serve, pois eh par e positivo!"
    else
        puts "Numero nao serve!"
    end
else
    puts "Numero nao serve!"
end


# vamos ler o programa... será que dá para escrever isso de maneira mais simples? (dá, sim!)

numero = -10
if numero > 0 && numero % 2 == 0
    puts "Numero serve, pois eh par e positivo!"
else
    puts "Numero nao serve!"
end

# && eh o operador E lógico...


# e temos tbm o operador NOT '!', um operador de negacao...

def par(n)
    if n % 2 == 0
        return true
    else
        return false
    end
end

numero = 10
if par(numero)
    puts "Numero eh par"
end

numero = 1
if !par(numero)
    puts "Numero eh impar"
end

puts 1 == 1
puts ! 1 == 1

# ou seja...

puts !true  # eh false
puts !false # eh true

# e mais...

puts true && true   # eh true
puts true && false  # eh false
puts false && true  # tbm eh false
puts false && false # e tbm eh false

puts true || true   # eh true
puts true || false  # eh true
puts false || true  # eh true
puts false || false # eh false