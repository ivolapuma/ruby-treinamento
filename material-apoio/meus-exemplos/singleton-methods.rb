# singleton methods

# Singleton Methods são métodos que só se encontram 
# disponíveis no objeto em que foi definido.

# metodos de instancia de um unico objeto podem ser
# modificados, nao afetando o comportamento dos metodos
# dos outros objetos da mesma classe

class Car
  def inspect
    "Carro barato"
  end
end

porsche = Car.new
porsche.inspect # => Carro barato
def porsche.inspect
  "Carro caro"
end

porsche.inspect # => Carro caro

# Os outros objectos não são afectados
other_car = Car.new
other_car.inspect # => Carro barato
