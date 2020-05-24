puts "Simple calculator"
20.times { print "-" }
puts
puts "Please enter your first number"
num_1 = gets.chomp
puts "Please enter your second number"
num_2 = gets.chomp
puts "Modulus first number of second will be #{num_1.to_i % num_2.to_i}"