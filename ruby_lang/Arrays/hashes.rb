# Hash with keys as a string
my_hash = { 'a' => 1, 'b' => 2, 'c' => 3 }


# Hash with keys as a symbol
symbol_hash = { a: 1, b: 2, c:3, d: 44 }

# To iterate through a hash and delete values that don't work for you

my_hash.each{ |key, value| my_hash.delete(key) if value == 1 }

puts my_hash
# {"b"=>2, "c"=>3}

# If I want to get only odds

symbol_hash.select! {|k,v| v.odd? }

puts symbol_hash