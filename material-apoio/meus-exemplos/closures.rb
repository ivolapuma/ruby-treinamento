# closures

# quando uma Proc é criada, ela captura o escopo de execucao
# atual --> conceito chamado de 'closure'

# isso significa que a Proc carregara com ela os valores como
# variaveis locais e metodos do contexto onde ela foi definida

# elas nao carregam os valores atuais (nao copia), mas uma referencia
# para eles, assim, se as variaveis mudam de estado após a Proc ser
# criada, a Proc sempre terá a versao mais recente

# exemplo:

def chama_proc(minha_proc)
  count = 500 # aqui eh so uma variavel local
  minha_proc.call
end

count = 1
minha_proc = Proc.new { puts count }

puts chama_proc(minha_proc)  # o que isso ira imprimir?

# imprimiu 1
# pois a Proc usa o valor de 'count' do local onde a Proc
# foi definida e este valor está do lado de fora da definicao
# do metodo


