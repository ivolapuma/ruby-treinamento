# binding class

# a classe Binding
# um objeto de Binding criado atravez do metodo 'binding'
# eh uma 'ancora' para esse ponto do codigo

# cada variavel, metodo e classe definidos nesse ponto
# estarao disponiveis posteriormente por meio desse objeto,
# mesmo se vc está em um contexto completamente diferente

def binding_exemplo
  foo = 100
  puts "valor de foo = #{foo}"
  binding
end

puts "binding_exemplo.class = #{binding_exemplo.class}"
# binding_exemplo.class realiza a chamada de binding_exemplo()

puts "chamando binding_exemplo()..."
puts binding_exemplo

puts binding_exemplo.eval("foo") # vai imprimir o valor da variavel 'foo' dentro da funcao com binding

puts foo # lanca NameError pois a variavel nao existe no escopo
