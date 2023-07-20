# O yield é uma palavra reservada do Ruby
# Ele habilita a leitura e execução de blocos
# dentro das nossas funções de Ruby

def normal_calculator(x, y, operator)
  case operator
  when "+"
    return x + y
  when "/"
    return x / y.to_f
  when "*"
    return x * y
  when "-"
    return x - y
  else
    return 0
  end
end

puts normal_calculator(2, 2, "+") # => 4
puts normal_calculator(56, 8.0, "/") # => 7

# No exemplo abaixo, quem define as operações de calculo no método `yield_calculator`
# é o bloco que foi passado logo após a chamada da função.
def yield_calculator(x, y)
  if block_given?
    yield(x, y)
  else
    return 0
  end
end

puts yield_calculator(5, 15) { |x, y| x * y } # => 75
puts yield_calculator(10, 5) { |x, y| x - y } # => 5
puts yield_calculator(10, 5) { |x, y| x + y } # => 5
puts yield_calculator(56, 8) { |x, y| x / y.to_f  } # => 7.0
puts yield_calculator(9, 9)
