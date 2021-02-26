#
# funcoes - chamando funcoes para passar como parametro para outras funcoes
#

def dobro_de(x)
    return 2*x
end

puts dobro_de(10) 
# o mesmo que...
# puts dobro_de 10

def ao_quadrado(x)
    return x**2
end

puts ao_quadrado(dobro_de(10))
# o mesmo que...
# puts ao_quadrado dobro_de 10


# def f1
#     10
# end

# puts(f1())  
# puts f1  # lembrando que os parenteses sao opcionais
