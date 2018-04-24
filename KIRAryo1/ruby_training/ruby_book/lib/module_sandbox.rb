require_relative './string_shuffle'

using StringShuffle
puts 'Alice'.shuffle

class User
  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new('Alice')
puts user.shuffled_name
puts 'Alice'.shuffle



# module AwesomeApi
#   @base_url = ''
#   @debug_mode = false
#
#   class << self
#     def base_url=(value)
#       @base_url = value
#     end
#
#     def base_url
#       @base_url
#     end
#
#     def debug_mode=(value)
#       @debug_mode = value
#     end
#
#     def debug_mode
#       @debug_mode
#     end
#
#     # 上ではわかりやすく定義したが、本来は↓の1行で済む
#     # attr_accessor :base_url, :debug_mode
#   end
# end
#
# AwesomeApi.base_url = 'http://example.com'
# AwesomeApi.debug_mode = true
#
# puts AwesomeApi.base_url
# puts AwesomeApi.debug_mode





# module Loggable
#   def log(text)
#     puts "[LOG] #{text}"
#   end
#
#   module_function :log
# end
#
# Loggable.log('Heeelo!')
#
# class Product
#   include Loggable
#
#   def title
#     log 'title is called'
#     'A great movie'
#   end
# end
#
# product = Product.new
# puts product.title



# module Loggable
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end
#
# class Product
#   extend Loggable
#
#   def self.create_products(names)
#     log 'create_products is called.'
#   end
# end
#
# Product.create_products([])
# Product.log('Hello')


# module Loggable
#   private
#
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end
#
#
# class Product
#   include Loggable
#
#   def title
#     log 'title is called'
#     'A great movie'
#   end
# end
#
# class User
#   include Loggable
#
#   def name
#     log 'name is called'
#     'Alice'
#   end
# end
#
# product = Product.new
# puts product.title
#
# user = User.new
# puts user.name
