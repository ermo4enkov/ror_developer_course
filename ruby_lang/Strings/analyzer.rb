puts "Enter your first name"
first_name = gets.chomp

puts "Enter your last name"
last_name = gets.chomp

puts "Your full name reversed is"
puts "#{first_name} #{last_name}".reverse

name_length = "#{first_name}#{last_name}".length
puts "Your name has #{name_length} in it"
