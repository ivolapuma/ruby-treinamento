# blocos

def explicit_block(&block)
  block.call # same as yield
end
explicit_block { puts "Explicit block called" }



def trabalha_com_10(&funcao)
  funcao.call 10
end
trabalha_com_10 {|x| x**2}


def do_something_with_block
  return "No block given" unless block_given?
  yield
end

def trabalha_com_bloco(&bloco)
  return "nenhum bloco informado" unless block_given?
  yield
end

trabalha_com_bloco
trabalha_com_bloco {puts "sou um bloco"}


# Blocks are Objects, they just don’t know it yet
# Blocks (closures, really) are heavily used by the 
# standard library. To call a block, you can either use 
# yield, or make it a Proc by appending a special argument
# to the argument list, like so:

def block(&the_block)
  # Inside here, the_block is the block passed to the method
  the_block # return the block
end
adder = block { |a, b| a + b }
# adder is now a Proc object
adder.class # => Proc


# You can create blocks outside of method calls, too, by calling Proc.new with a block or calling the lambda method.

# Similarly, methods are also Objects in the making:

method(:puts).call "puts is an object!"
# => puts is an object!