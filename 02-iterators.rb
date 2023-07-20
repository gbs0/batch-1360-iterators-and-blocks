musicians = ["David Gilmour", "Roger Waters", "Richard Wright", "Nick Manson"]

# Iterar na lista de musicos utilizando seu INDICE e o FOR
for indice in 0...musicians.length
  puts "#{indice + 1} - #{musicians[indice]}"
end

# Iterar na lista utilizando a cada elemento da array
puts "Loop w/ FOR"
for artist in musicians
  puts artist
end

# Iterador .EACH percorre cada elemento de dentro da Array
puts "Loop w/ EACH"
musicians.each do |artist|
  artist.upcase
end

p musicians

# Iterador .EACH_WITH_INDEX percorre cada elemento de dentro da Array levando em conta seu INDICE.
musicians.each_with_index do |artist, indice|
  # puts "#{indice + 1} - #{artist}"
end

# Iterator.MAP transforma todos os objetos de dentro da array
musicians_upcased = musicians.map do |artist|
  artist.upcase
end

# Iterar sobre a Array, e devolver somente os primeiros nomes de cada artista
first_names = musicians.map do |artist| # artist => "Roger Walters"
  name = artist.split(" ") # => ["Roger", "Walter"]
  name.first
end

p first_names

# Contar quantos artistas tem o nome que comecem com a letra "R"
musicians_count_with_r = musicians.count do |artist|
  name = artist.split(" ") # => ["Roger", "Walter"]
  first_name = name.first # => "Roger"
  first_letter = first_name[0]
  first_letter.upcase == "R"
end

p musicians_count_with_r

# Selecionar os artistas que tem o nome com a letra R
musicians_with_r = musicians.select { |artist| artist.start_with?("R") }
# O bloco escrito acima é o mesmo que este:
# musicians_with_r = musicians.select do |artist|
#   artist.start_with?("R")
# end

p musicians_with_r
