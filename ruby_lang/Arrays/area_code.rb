dial_book = {
    "newyork" => "212",
    "newbrunswick" => "723",
    "edison" => "988",
    "plainsboro" => "609",
    "sanfrancisco" => "301",
    "miami" => "305",
    "paloalto" => "650",
    "evanston" => "847",
    "orlando" => "407",
    "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
  somehash.each_key { |key| puts key  }
end

# Get area code based on given hash and key
def get_area_code(somehash, city)
  somehash.has_key?(city) ? "The city code is #{somehash.fetch(city)}" : "There is no code for the #{city}"
end

def get_city_by_code(somehash, code)
  somehash.has_value?(code) ? "The city is #{somehash.key(code).upcase}" : "There is no city with the #{code}"
end

10.times {print'-'}
puts
puts 'Here are available cities, please choose one'
get_city_names(dial_book)

# Execution flow
loop do
  puts "Please select what do you want to find out, city or code?"
  key_or_code = gets.chomp

  if (key_or_code == 'code')
    puts 'Your city: '
    city = gets.chomp
    puts get_area_code(dial_book, city)
  elsif (key_or_code == 'city')
    puts 'Your code: '
    code = gets.chomp
    puts get_city_by_code(dial_book, code)
  else
    puts 'Sorry, but you can choose only city or code'
  end
  puts 'Enter n if you want to quit'
  input = gets.chomp.downcase
  break if input == 'n'
end
