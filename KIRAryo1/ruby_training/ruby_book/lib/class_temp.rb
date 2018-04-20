class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    # call name = method without self
    name = 'Bob'
  end

  def rename_to_carol
    # call name = method with self
    self.name = 'Carol'
  end

  def rename_to_dave
    # overwrite instance valiable directly
    @name = 'Dave'
  end

  def hello
    # call name method without self
    "Hello, I am #{name}."
  end

  def hi
    # call name method with self
    "Hi, I am #{self.name}."
  end

  def my_name
    # access instance valiable @name directly
    "My name is #{@name}."
  end
end

user = User.new("Alice")

user.rename_to_bob
puts user.name

user.rename_to_carol
puts user.name

user.rename_to_dave
puts user.name

puts user.hello
puts user.hi
puts user.my_name


#class User
#  def initialize(name)
#    @name = name
#  end
#
#  def hello
#    shuffled_name = @name.chars.shuffle.join
#    "Hello, I am #{shuffled_name}"
#  end
#end
#
#user = User.new('Alice')
#puts user.hello
