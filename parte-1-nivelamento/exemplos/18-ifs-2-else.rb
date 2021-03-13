#
# estruturas de decisao - if-elsif-else
#

numero = 10
if numero == 20
    puts "Numero eh igual a 20!"
end


if numero == 20
    puts "Numero EH igual a 20!"
else
    puts "Numero NAO EH igual a 20!"
end


# agora vamos ver esse cenario...

numero = 20

if numero == 10
    puts "Numero eh igual a 10!"
end

if numero == 20
    puts "Numero eh igual a 20!"
end

if numero == 30
    puts "Numero eh igual a 30!"
end


# mas podemos escrever isso diferente!

numero = 20

if numero == 10
    puts "Numero eh igual a 10!"
elsif numero == 20
    puts "Numero eh igual a 20!"
elsif numero == 30
    puts "Numero eh igual a 30!"
end


# qual a diferença entre as duas formas acima?
# (esperar alguem se manifestar)


# vejamos esse cenario...

numero = 20

if numero < 10
    puts "Numero eh menor que 10!"
end

if numero > 10
    puts "Numero eh maior que 10!"
end

if numero == 20
    puts "Numero eh igual a 20!"
end

# e compare com esse...

numero = 20

if numero < 10
    puts "Numero eh menor que 10!"
elsif numero > 10
    puts "Numero eh maior que 10!"
elsif numero == 20
    puts "Numero eh igual a 20!"
end


# o que esta acontecendo em cada uma das formas?
# (esperar alguem se manifestar)


# e tbm pode usar 'else' ao final dos 'elsif's...

numero = 50
if numero == 10
    puts "Numero eh igual a 10!"
elsif numero == 20
    puts "Numero eh igual a 20!"
elsif numero == 30
    puts "Numero eh igual a 30!"
else
    puts "Numero NAO EH 10, nem 20 e nem 30!"
end