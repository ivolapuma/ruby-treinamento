def a()
    b() + c() + f()
end

def b()
    c() + d()
end

def c()
    return 'c'
end

def d()
    c() + e()
end

def e()
    return 'e'
end

def f()
    return 'f'
end

def main()
    return a()
end

# o que será impresso na tela?
main()
