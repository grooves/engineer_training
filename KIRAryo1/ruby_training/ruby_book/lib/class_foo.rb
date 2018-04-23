class Foo
  # this puts is called when class definition is loaded
  p "self under_direct class statement: #{self}"
  def self.bar
    p "self in class method: #{self}"
  end
  def baz
    puts "self in instance method: #{self}"
  end
end

puts Foo.bar
puts foo = Foo.new
puts foo.baz
