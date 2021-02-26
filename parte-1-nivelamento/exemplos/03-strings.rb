#
# strings
#

puts "este texto eh uma string"
puts "uma string eh tudo que esta entre aspas"
puts 'entre aspas duplas ou simples, com essa'

puts "caixa d'agua"
puts 'vou escrever essa "palavra" entre aspas duplas'

#
# caracter de escape
#
puts 'caixa d\'agua'
puts "vou escrever essa \"palavra\" entre aspas duplas"

# e se eu precisar imprimir o caracter "\"?
puts "assim eu imprimo o caracter \\"

# outros caracteres de escape
puts "uma linha\noutra linha"
puts "um texto\te outro depois de um TAB"

#
# operacoes com strings
#
puts "um texto concatenado " + "com outro texto"
puts 'outro texto concatenado ' + 'com outro texto' + ', a diferenca sao as aspas simples'

# sendo assim...
puts "1" + "2"  # vai ser igual a "12"
# e se eu 'concatenar' uma string com um numero?
puts "1" + 2  # pau! toma TypeError, o Ruby nao faz conversao de numero para string

# o Ruby nao converte numero para string, mas olha só que legal...
puts "9" * 9
puts "batata" * 3

# porem, uma string 'vezes' outra string nao rola...
puts "9" * "9"  # TypeError
puts "batata" * "laranja"  # TypeError



#
# strings avançado (spoiler, usar na parte 2)
#

#
# interpolacao de strings
#
texto = "conteudo da variavel 'texto'"
puts "exemplo de interpolacao de string: variavel texto = #{texto}"
puts 'e inteporlacao de strings com aspas simples? texto = #{texto}'  # codigo nao quebra, mas nao funciona

#
# strings flexiveis %
#
s = %(com strings flexiveis podemos colocar ' e tbm " assim)
puts s

s2 = %@com strings flexiveis podemos colocar ' e tbm " assim@
puts s2

s3 = %{com strings flexiveis podemos colocar ' e tbm " assim}
puts s3

puts s == s2 && s == s3  # true

#
# strings longas
#
string_longa = <<FIM
Criando uma string longa
com saltos de linha
e que vai terminar logo abaixo.
FIM

puts string_longa

string_longa = %{
Criando uma string longa
com saltos de linha
com strings flexivel.
}

puts string_longa

#
# string imutaveis (ou congeladas)
#
texto = '0123456789'
puts texto, texto.object_id
texto[0] = 'x'
puts texto, texto.object_id

texto2 = 'ABCDE'
texto2.freeze   # torna a string imutavel
texto2[0]= '0'  # pau! FrozenError

# strings congeladas ficam numa tabela e se compartilham para outras variaveis
str = 'ABC'.freeze  
str2 = 'ABC'.freeze  # mesma string congelada na variavel 'str'
puts str == str2
puts str.object_id == str2.object_id
puts str.equal? str2

puts str, str2
puts str.object_id, str2.object_id
