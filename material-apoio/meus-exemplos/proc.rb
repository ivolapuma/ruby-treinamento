# objeto Proc

my_proc = Proc.new { |x| puts x }

t = Proc.new { |x,y| puts "I don't care about arguments!" }
t.call
# "I don't care about arguments!"


def roda_bloco(&um_bloco); um_bloco; end
soma_numeros = roda_bloco {|x,y| x+y}
soma_numeros.call 10, 20

eleva_quadrado = Proc.new {|x| x**2}
eleva_quadrado.call 5

# lambda vs Proc

# Should work
my_lambda = -> { return 1 }
my_lambda.call
puts "Lambda result: #{my_lambda.call}"

# Should raise exception (LocalJumpError)
my_proc = Proc.new { return 1 }
puts "Proc result: #{my_proc.call}"

# para funcionar...
my_proc = Proc.new { 1 }
puts "Proc result: #{my_proc.call}"


# se um return estiver dentro de uma proc, 
# e a proc for chamada dentro de um metodo,
# o return sera executado e o metodo retornara
# o que a proc retornou

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end
p call_proc
# Prints "Before proc" but not "After proc"


