class Student
  @first_name
  @last_name
  @email
  @username
  @password

  # This is not a setter. This is a method
  # def first_name(name)
  # And this one is setter!
  def first_name=(name)
    @first_name = name
  end

  # This is a getter
  def get_first_name
      @first_name
  end
end

roman = Student.new
roman.first_name = 'Vasya'
puts roman.get_first_name






