#
# estruturas de decisao - ifs e operadores de decisao
#

# vamos fazer nossos programas tomarem decisoes...

# para isso, vamos conhecer o comando 'if'

numero = 10
puts "numero eh " + numero.to_s()

if numero == 10
    puts "nao eh que numero eh igual a 10!"
end

# e se eu perguntasse se numero fosse igual a 20?

if numero == 20
    puts "numero eh igual a 20!"
end

# nao imprimiu "numero eh igual a 20!" né?

# podemos fazer perguntas com numeros, strings etc.

nome = "Ivo"
if nome == "Ivo"
    puts "Sim, seu nome EH Ivo!"
end

# se eu pergunto se eh igual, posso perguntar se eh diferente? SIIIIIIIIIMMMMMM....

nome = "Ivo"
if nome != "Jose"   # <-- nome o operador... '!='
    puts "Sim, seu nome NAO EH Jose!"
end

# e tbm posso perguntar se eh maior ou menor!

numero = 20
if numero > 10
    puts "Sim, " + numero.to_s() + " eh MAIOR que 10!"
end

numero = 1
if numero < 10
    puts "Sim, " + numero.to_s() + " eh MENOR que 10!"
end
