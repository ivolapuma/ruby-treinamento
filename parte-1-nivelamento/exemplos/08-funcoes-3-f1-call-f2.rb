#
# funcoes - que chamam outras funcoes
#

# a funcao eh minha e eu faço o que eu quiser!

def f1
    puts "f1"
    return 10
end

def f2
    puts "f2"
    return f1() * 2  # dentro de uma funcao, posso chamar outras funcoes!
end

f2

# como f2 eh uma funcao, posso guardar o valor retornado numa variavel
x = f2()
puts x

#
# alias, se ja nao foi dito antes, 'puts' eh uma funcao (um metodo)!
# porém, eh uma funcao embutida (que ja eh internamente definida) no Ruby
#
