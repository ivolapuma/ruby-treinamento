# modificadores de acesso

class MinhaClasse
  private
  def um_metodo; true; end
  def outro_metodo; false; end
end

class OutraClasse
  #aqui, um_metodo eh publico
  def um_metodo; true; end
  
  private
  
  # e outro_metodo eh privado
  def outro_metodo; false; end
end


if __FILE__ == $0
  c = MinhaClasse.new
  #puts c.outro_metodo # deve lancar NoMethodError
  c2 = OutraClasse.new
  puts c2.um_metodo
  #puts c2.outro_metodo # deve lancar NoMethodError
end

# public, private e protected são, na verdade, métodos, 
# por isso podem levar parâmetros. Se passar um Symbol 
# a um deles, a visibilidade desse método é alterada.