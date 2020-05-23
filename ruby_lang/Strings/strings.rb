print "Hello world\n"
puts 'Hello world'
p 'Hello world'


def say_hello(thing_to_say)
  puts "hello #{thing_to_say}"
end

say_hello("Roma")


# Methods. How to find them

# How to find out a type
message = "Am I a string?"

puts message.class
# It will be String

# You can invoke methdos directly on primitive types as well
puts 10.class
# Integer
puts 10.0.class
# Float

puts message.methods
# Will return all available methods

# Integer to a string
puts 10.to_s

# Pretty cool sub method
subString = "Welcome to the jungle"
subString.sub!("the jungle", "utopia")

puts subString

# gsub os for Global changes