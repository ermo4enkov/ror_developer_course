class Student

  # It could work, but there is another more efficient way
  # @first_name
  # @last_name
  # @email
  # @username
  # @password

  # This is not a setter. This is a method
  # def first_name(name)

  # And this one is setter!
  # def first_name=(name)
  #   @first_name = name
  # end

  # # This is a getter
  # def get_first_name
  #     @first_name
  # end
  #
  #
  # Basically this provides a setter functionality
  attr_accessor :first_name, :last_name, :email, :password

  # Basically this provides a getter functionality
  # attr_reader :username

  # @first_name
  # @last_name
  # @email
  # @username
  # @password

  # But how it works in a more common way
  # The key method initialize allows to set properties from the start
  def initialize(firstname, lastname, email, username, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end


  def to_s
    "First name is #{first_name}"
  end

end

# The code with setters and getters
# roman = Student.new
# roman.first_name = 'Vasya'
# puts roman.get_first_name


#Let's go with attr_accessor
# roman = Student.new
# roman.first_name = 'Vasya'
# roman.email = 'test@test.com'
# roman.last_name = 'Ermochenkov'
# roman.username = '...'
# puts roman


roman = Student.new('Roman', 'Ermo', 'test@test.com', 'ermo')
puts roman



