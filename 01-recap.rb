# Como definimos uma lista em Ruby?
musicians = ["David Gilmour", "Roger Waters", "Richard Wright", "Nick Manson"]

# Como pegar o primeiro elemento da Array musicians?
puts musicians[0]
puts musicians.first

# Inserir um novo elemento na array?
musicians.push("Ozzy Osbourne") # OU musicians << "Ozzy Osbourne"
musicians.append("Ozzy Osbourne") # OU inserir na primeira posição .prepend("Ozzy Osbourne")

# Inserir um novo elemento a partir de um INDICE especifo
musicians.insert(2, "Led Zeppelin")

# Como remove um elemento pelo seu indice?
musicians.delete_at(0)
musicians.delete_at(-1) # DELETAMOS O ULTIMO ELEMENTO DA ARRAY

# Como descobrir o tamanho da Array?
p musicians.count
p musicians.size
p musicians.length

# Organizar a array em ordem alfabética?
musicians.sort

# Organizar a array por ordem de quantidade de caracteres por nome
# Do menor pro maior
# musicians.sort_by { |artist| artist.lenght }
musicians_by_name = musicians.sort_by do |artist|
  artist.length
end
# Se quisermos o contrário (do maior pro menor) podemos reverter a lista
p musicians_by_name.reverse

# Se quisermos embaralhar um array?
musicians.shuffle
musicians.sample(musicians.size)

# Se quisermos pegar uma AMOSTRA da lista, ex: "Roger Walters"
musicians.sample

# Criar uma array de 0 a 10
# Ranges | Intervalos
(0...10).to_a # => [0, 1, 2, 3, 4..., 9]
(0..10).to_a # => [0, 1, 2, 3, 4..., 10]

# Criar uma array com as letras do alfabeto
("a".."z").to_a # => ["a", "b", "c"..., "z"]
