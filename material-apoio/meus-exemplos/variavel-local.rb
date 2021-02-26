# variaveis locais

x = 10
puts "variavel x agora eh = #{x}"

def f1
  x = 20
  puts "variavel x em f1() eh = #{x}"
end

f1()

puts "variavel x apos chamar f1() eh = #{x}"