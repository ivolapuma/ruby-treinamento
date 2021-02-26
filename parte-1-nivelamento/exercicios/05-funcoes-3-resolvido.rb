# d = 2 * r
def diametro_circulo(raio)
    raio * 2
end

# C = 2 * π * r
def comprimento_circulo(raio)
    diametro_circulo raio * Math::PI
end

# A = π * r**2
def area_circulo(raio)
    Math::PI * raio**2
end

raio = 10
puts raio
puts diametro_circulo raio
puts comprimento_circulo raio
puts area_circulo raio