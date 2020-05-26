users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

def check_user_name(list_of_users, username)
    usernameArr =  list_of_users.select { |elem| elem[:username] == username}
end

def check_user_password(user, password)
    user.length > 0 ? user[0][:password] == password: false
end

def authenticate_user(list_of_users, username, password)
    check_user_password(check_user_name(list_of_users, username), password)
end

puts "Welcome to the authenticator"
25.times { print "-" }
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
    print "Username: "
    userName = gets.chomp
    print "Password: "
    password = gets.chomp
    auth = authenticate_user(users, userName, password)
    puts auth ? 'Congratulations!!!' : 'Sorry, your credentials are wrong'
    break if auth
    puts "Press n to quit or any other key to continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4