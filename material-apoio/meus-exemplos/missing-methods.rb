# missing methods

# Ruby doesn’t give up if it can’t find a method that
# responds to a particular message. It calls the 
# method_missing method with the name of the method it
# couldn’t find and the arguments. By default, 
# method_missing raises a NameError exception, but you 
# can redefine it to better fit your application, and 
# many libraries do. Here is an example:

class Carro
  def ligar; "carro ligado"; end
  def andar; "carro andando"; end
  def method_missing(id, *args); "comando desconhecido"; end  
end

if __FILE__ == $0
  c = Carro.new
  puts c.ligar
  puts c.andar
  puts c.parar
end


# id is the name of the method called, the * syntax collects
# all the arguments in an array named 'arguments'
#def method_missing(id, *arguments)
#  puts "Method #{id} was called, but not found. It has " +
#       "these arguments: #{arguments.join(", ")}"
#end

#__ :a, :b, 10
# => Method __ was called, but not found. It has these
# arguments: a, b, 10