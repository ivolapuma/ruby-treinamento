#
# variaveis
#

puts "vejam o exemplo abaixo:"
x = "valor da variavel"
y = 10
z = 2.34

puts "imprimindo os valores das variaveis x, y e z:", x, y, z

# uma variavel eh um nome que associamos a um valor, que fica armazenado na 
# memoria do computados enquanto o programa está executando

#
# nomenclatura de variaveis
#

# devemos dar nomes significativos para as variaveis

#nome = 'Ivo'
#idade = 22
#peso = 65.9
nome = 'Ivo'
idade = '22'
peso = '65.9'


puts "Seu nome eh " + nome +
     "\nsua idade eh " + idade +
     "\nseu peso eh " + peso + "."

# como está acima não fica mais legivel de como abaixo?

a = 'Ivo'
b = '22'
c = '65.9'

puts "Seu nome eh " + a +
     "\nsua idade eh " + b +
     "\nseu peso eh " + c + "."

#
# regras de nomenclatura (particulares do Ruby, cada linguagem tem a sua)
#

x = 10      # funciona
x2 = 100    # funciona
2x = 0      # pau! SyntaxError

nomeCompleto = 'Diego Armando Maradona'
NomeCompleto = 'Edson Arantes do Nascimento'

# sao iguais?
puts nomeCompleto, NomeCompleto

# no Ruby, maisculas e minusculas diferenciam (eh uma linguagem 'case sensitive')

nome_completo = 'Ivo La Puma'  # funciona
_nome = 'Ivo'                  # funciona
sobrenome_ = 'La Puma'         # funciona

$nome = 'Ivo'   # funciona
nome$ = 'Ivo'   # pau! SyntaxError

@nome = 'Ivo'   # funciona
nome@ = 'Ivo'   # pau! SyntaxError

@@nome = 'Ivo'  # funciona, mas: warning: class variable access from toplevel
nome@@ = 'Ivo'  # pau! SyntaxError


#
# padrao Ruby de nomenclatura
#

variavel_comum = 1               # para variaveis gerais (padrao snake)
$variavel_global = 100           # para variaveis globais (vs variaveis locais)
@nome = 'Ivo'                    # para atributos do objeto (POO)
@@quantidade_contas_abertas = 1  # para atributos da classe (POO)


#
# variaveis avançado (spoilers, usar na parte 2)
#

#
# operador == (verifica valores) vs método equal? (verifica endereco de memoria)
#
a = 'abc'
b = 'abc'
puts a == b  # true
puts a.object_id == b.object_id
puts a.equal? b

puts a, b
puts a.object_id, b.object_id

#
# variaveis sao referencias de memoria
#
texto1 = 'um texto'
texto2 = texto1

puts texto1 == texto2
puts texto1.object_id == texto2.object_id
puts texto1.equal? texto2

puts texto1, texto2
puts texto1.object_id, texto2.object_id

texto1[0] = 'x'
texto1[1] = 'x'
puts texto1, texto2

#
# tipagem forte vs fraca 
#
s = 'abc'
puts s
puts s.class  # String

n = 10
puts n
puts n.class  # Integer

puts s + n    # como sabemos, TypeError -- o Ruby nao faz conversao implicita de numero para string
# por isso, no Ruby a tipagem eh forte (no JS, um comando assim funcionaria, pois haveria uma conversao implicita)


#
# estatica vs dinamica
#
s = 'um texto'
puts s
puts s.class

s = 10
puts s
puts s.class

# s 'valia' uma string qualquer, depois, passou a 'valer' um numero
# isso ocorre, pois a tipagem eh dinanica, o Ruby verifica no momento da atribuicao do valor à variavel
# qual o tipo que a variavel vai ter
# (no Java, isso nao eh possivel, pois a tipagem eh estatica, ao declarar uma variavel se define o seu tipo
# e esse tipo nao muda mais)
