# *args

def f1(*args)
  puts args
  puts args.class
end

f1 1, 2, 3, 4, 5

# args é do tipo Array

def f2(*args)
  puts args
  puts args.class
  puts args[0]
  puts args[1]
end
