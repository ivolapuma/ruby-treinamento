# argumentos nomeados

def deliver(from: "A", to: nil, via: "mail")
  "Enviando de #{from} para #{to} através de #{via}."
end

deliver(to: "B")
# => "Enviando de A para B atavés de mail."
deliver(via: "Pony Express", from: "B", to: "A")
# => "Enviando de B para A através de Pony Express."


def deliver(from="A", to=nil, via="mail")
  "Enviando de #{from} para #{to} atraves de #{via}."
end

deliver("RJ", "mim", "carroca")
deliver("RJ", "carroca")
deliver("RJ")
deliver(to="mim", via="carroca", from="RJ")