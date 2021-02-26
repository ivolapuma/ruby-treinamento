def a()
    b()
    c()
    f()
end

def b()
    c()
    d()
end

def c()
    puts 'c'
end

def d()
    c()
    e()
end

def e()
    puts 'e'
end

def f()
    puts 'f'
end

def main()
    a()
end

# o que será impresso na tela?
main()
