# lambda

say_something = -> { puts "This is a lambda" }
say_something.call

# funciona, mas ainda nao entendi...
# diga_outra_coisa = lambda {puts "sou outro lambda"}

my_lambda = -> { puts "Lambda called" }
my_lambda.call
my_lambda.()
my_lambda[]
my_lambda.===


# lambdas com parametros

times_two = ->(x) { x * 2 }
times_two.call(10)
# 20
times_two.call 10

