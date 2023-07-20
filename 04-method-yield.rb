def greet(first_name, last_name)
  if block_given?
    name = "#{first_name} #{last_name}"
    yield(name)
  else
    name = "#{first_name} #{last_name}"
    return "Hello #{name}"
  end
end

puts greet('john', 'lennon')

puts greet("roger", "walter") { |name| "Greetings #{name}, you're looking marvelous today!" }
