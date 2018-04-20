class Product
  @@name = 'Product'
  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

class DVD < Product
  @@name = 'DVD'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end

puts Product.name
product = Product.new('A great movie')
puts product.name
puts Product.name

puts Product.name
puts DVD.name

product = Product.new('A great movie')
puts product.name

dvd = DVD.new('An awesome film')
puts dvd.name
puts dvd.upcase_name

puts Product.name
puts DVD.name



# class Product
#   SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze
#
#   def self.names_without_foo(names = SOME_NAMES)
#     names.delete('Foo')
#     names
#   end
# end
#
# # Product.names_without_foo
# Product::SOME_NAMES[0].upcase!


# class Parent
#   def initialize
#     @first = 1
#     @second = 2
#     @third = 3
#   end
#
#   def number
#     "#{@first}, #{@second}, #{@third}"
#   end
# end
#
# class Child < Parent
#   def initialize
#     super
#     @hour = 6
#     @minute = 30
#     @second = 59
#   end
#
#   def time
#     "#{@hour}:#{@minute}:#{@second}"
#   end
# end
#
# parent = Parent.new
# puts parent.number
#
# child = Child.new
# puts child.time
# puts child.number
#

# class Product
#   def to_s
#     "name : #{name}"
#   end
#
#   private
#
#   def name
#     'A great Movie'
#   end
# end
#
# class DVD < Product
#   private
#
#   def name
#     'An awesome film'
#   end
# end
#
#
# product = Product.new
# puts product.to_s
#
# dvd = DVD.new
# puts dvd.to_s


# class Product
#   attr_reader :name, :price
# 
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
# 
#   def to_s
#     "name: #{name}, price: #{price}"
#   end
# end
# 
# product = Product.new('A great movie', 1000)
# puts product.to_s
# 
# 
# class DVD < Product
#   # name and price are determined in Product class so don't need to be defined here
#   attr_reader :running_time
# 
#   def initialize(name, price, running_time)
#     # attribute existing at superclass
#     super(name, price)
#     # attribute original in DVD class
#     @running_time = running_time
#   end
# 
#   def to_s
#     "#{super}, running_time: #{running_time}"
#   end
# end
# 
# dvd = DVD.new('An owesome film', 3000, 180)
# puts dvd.to_s
# 



# class Product
#   attr_reader :name, :price
# 
#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
# 
#   # method for reshaping price
#   def self.format_price(price)
#     "#{price}円"
#   end
# 
#   def to_s
#     # call class method from instance method
#     formatted_price = Product.format_price(price)
#     "name: #{name}, price: #{formatted_price}"
#   end
# end
# 
# product = Product.new('A great movie', 1000)
# puts product.to_s
