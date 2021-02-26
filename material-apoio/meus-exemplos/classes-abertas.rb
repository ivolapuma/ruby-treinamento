# classes abertas

# podem ser modificadas a qualquer momento...

class Integer
  def horas
    self * 3600 # numero de segundos numa horas
  end
end

Time.mktime(2021, 1, 1) + 14.horas