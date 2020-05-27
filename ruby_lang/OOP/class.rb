class User
  attr_accessor :name, :email
  def initialize(name, email)
    @name = name
    @email = email
  end

  def run
    puts "Hey I am running #{@email} and #{name}"
  end

  def self.identify_yourself
    puts "Hey I am a class method"
  end
end

user = User.new('Roman', 'test')
user.run
User.identify_yourself