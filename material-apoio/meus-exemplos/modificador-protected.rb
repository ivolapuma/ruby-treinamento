# modificador protected

class Test1
  # public por omissao
  def id; 99; end
  def ==(other); id == other.id; end
end

class Test2
  protected 
  def id; 99; end
  public 
  def ==(other); id==other.id; end
end

class Test3
  private 
  def id; 99; end
  public 
  def ==(other); id==other.id; end
end

if __FILE__ == $0
  puts "TESTE 1"
  t1 = Test1.new
  t2 = Test1.new
  puts t1 == t2
  
  puts "TESTE 2"
  t1 = Test2.new
  t2 = Test2.new
  puts t1 == t2
  
  puts "TESTE 3"
  t1 = Test3.new
  t2 = Test3.new
  #puts t1 == t2 # deve lancar NoMethodError
end