#
# operadores aritmeticos (e numeros)
#

# com numeros inteiros...

puts 3 + 2   # adicao
puts 3 - 2   # subtracao
puts 3 * 2   # multiplicacao
puts 3 / 2   # divisao
puts 3 ** 2  # potencia

# e com numeros de ponto flutuante...

puts 3.0 + 2.0
puts 3.0 - 2.0
puts 3.0 * 2.0
puts 3.0 / 2.0
puts 3.0 ** 2.0

# usando parenteses para definir precedencia...

puts 1 + 2 * 3 - 4 / 5
puts 1.0 + 2.0 * 3.0 - 4.0 / 5.0
puts 1.0 + (2.0 * 3.0) - (4.0 / 5.0)

puts (1 + 2) * (3 - 4) / 5  # -1? nao arredonda para baixo? nao deveria ser 0?
puts (1.0 + 2.0) * (3.0 - 4.0) / 5.0

# e com potencia?

puts 1 + 2 ** 3
puts 1 + (2 ** 3)

puts 1 + 2 * 3 ** 4  # o que eh executado antes? * ou **?
puts 1 + (2 * 3) ** 4
puts 1 + 2 * (3 ** 4)

# operador % (retorna o resto inteiro da divisao)
puts 5 / 2
puts 5 % 2
puts 5.0 % 2.0

#
# um pequeno bônus...
#

puts 0.1 + 0.2  # como assim?!
puts 2.0 - 1.1  # pq nao eh 0.9?!

# WHY??!!! It’s so simple… in what world 2.0–1.1 would be different than 0.9 and 
# how this thing got implemented in virtually every computer known?!

# The reason is: should not matter! Floating point numbers, kindly called “Float” 
# (homonym to its Ruby representation) imposes a limit for any number that could be 
# really big or even infinite, but you don’t care so much about precision. For your 
# use, doesn’t matter if the result is 0.8999999999999999 or 0.9. Both will get you 
# happy and thanking this precious and big calculator you call “computer”.

# https://en.wikipedia.org/wiki/IEEE_754

float = 0.00000000000000000000000000000000000000000000000000000000000009
# => 0.0
float.class
# Float
float.zero?
# => true


#
# divisao por zero...
#
puts 10 / 1  # nada de novo sob o sol
puts 10 / 0  # pau! tomamos um ZeroDivisionError
# mas...
puts 10 / 0.0   # Infinity --> qualquer numero que o Ruby sabe que existe, mas nao eh capaz de representá-lo
puts -10 / 0.0  # -Infinity
# e...
puts 0 / 0.0  # NaN : Not a Number --> quando o Ruby nem sabe como começar o cálculo, vai retornar um NaN


# pequeno spoiler
puts Float::INFINITY                    # Infinity
puts Float::INFINITY / Float::INFINITY  # NaN


#
# 1o spoiler:
# Modulo 'Math'...
# pode-se apresentar o comando 'ri' para consultar documentacao...
#

puts Math.sqrt(4)
puts 4 ** (1.0/2.0)
puts 4 ** 0.5

# assim, dá para calcular raiz cubica, raiz quarta e assim vai...
puts 2 ** 3
puts 8 ** (1.0 / 3.0)


#
# 2o spoiler:
# numeros racionais e a Classe Rational...
#

puts 1/3
puts 1.0/3.0
puts (1.0/3.0) + (1.0/3.0) + (1.0/3.0)
puts (1.0/3.0)*3.0

puts 1/3r  # numero racional -> um numero representado por um par de inteiros: a/b (b>0)
puts 1.0/3.0r  # ignora o r e retorna um ponto flutuante
puts (1/3r)*3  # retorna um racional

puts Math.sqrt(2)
puts 2 ** 0.5

puts Math.sqrt(2) * Math.sqrt(2)
puts (2 ** 0.5) * (2 ** 0.5)
# raiz quadrada de 2 eh um numero irracional e eh armazenado como Float, logo, sempre haverá perda de precisão...

raiz_2 = Math.sqrt(2)
raiz_2_r = Rational(raiz_2)
puts raiz_2, raiz_2_r

require 'bigdecimal'
raiz_2 = Math.sqrt(2)
puts raiz_2.to_s
puts BigDecimal(raiz_2.to_s)
puts BigDecimal(raiz_2.to_s) * BigDecimal(raiz_2.to_s)

