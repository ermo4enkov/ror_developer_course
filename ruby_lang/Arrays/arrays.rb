example = [ 1,2,3,4,5,6,7,8,9 ]

puts example.last
# Will return the last element

x = 1..100

puts x.class
# Range

puts x.to_a.class
# Array

puts example.shuffle
# Will randomly shuffle the array

range_a = 1..10
puts range_a.to_a.shuffle!
puts range_a
# Will remain the same!

z = range_a.to_a.shuffle!
puts z
# That how it will work

alphabet = "a".."z"
p alphabet.to_a
# Will return an array

puts example.include?(0)
# Will return false

# .pop
# Will remove last item and return it

# How to create an array pretty fast from a large string for example
long_string =  %w("Hello my name is Roman and I'am learning Ruby")

# How to go through the each element inside array
long_string.each {|el| puts el}

# How to get only odd numbers from an array
odd = (1..100).to_a.select{ |element| element.odd? }
p odd

# How to get only even numbers from an array
even = (1..100).to_a.select{ |element| element.even? }
p even