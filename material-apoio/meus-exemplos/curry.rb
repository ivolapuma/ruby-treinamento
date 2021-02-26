# curry

# Returns a curried proc. If the optional arity argument 
# is given, it determines the number of arguments. A 
# curried proc receives some arguments. If a sufficient 
# number of arguments are supplied, it passes the supplied 
# arguments to the original proc and returns the result. 
# Otherwise, returns another curried proc that takes the 
# rest of arguments.

b = proc {|x, y, z| (x||0) + (y||0) + (z||0) }
p b.curry[1][2][3]           #=> 6
p b.curry[1, 2][3, 4]        #=> 6
p b.curry(5)[1][2][3][4][5]  #=> 6
p b.curry(5)[1, 2][3, 4][5]  #=> 6
p b.curry(1)[1]              #=> 1

# b.curry(?) --> ? numero de parametros para passar para a proc

b = proc {|x, y, z, *w| (x||0) + (y||0) + (z||0) + w.inject(0, &:+) }
p b.curry[1][2][3]           #=> 6
p b.curry[1, 2][3, 4]        #=> 10
p b.curry(5)[1][2][3][4][5]  #=> 15
p b.curry(5)[1, 2][3, 4][5]  #=> 15
p b.curry(1)[1]              #=> 1

b = lambda {|x, y, z| (x||0) + (y||0) + (z||0) }
p b.curry[1][2][3]           #=> 6
p b.curry[1, 2][3, 4]        #=> wrong number of arguments (given 4, expected 3)
p b.curry(5)                 #=> wrong number of arguments (given 5, expected 3)
p b.curry(1)                 #=> wrong number of arguments (given 1, expected 3)

b = lambda {|x, y, z, *w| (x||0) + (y||0) + (z||0) + w.inject(0, &:+) }
p b.curry[1][2][3]           #=> 6
p b.curry[1, 2][3, 4]        #=> 10
p b.curry(5)[1][2][3][4][5]  #=> 15
p b.curry(5)[1, 2][3, 4][5]  #=> 15
p b.curry(1)                 #=> wrong number of arguments (given 1, expected 3)

b = proc { :foo }
p b.curry[]                  #=> :foo