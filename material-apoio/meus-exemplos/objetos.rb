# tudo sao objetos (inclusive, classes)

class A
  attr_accessor :a
end

B = Class.new do
  attr_accessor :b
end

if __FILE__ == $0
  o1 = A.new
  o1.a = "a"
  o2 = B.new
  o2.b = "b"
  puts o1
  puts o1.a
  puts o2 
  puts o2.b
end
