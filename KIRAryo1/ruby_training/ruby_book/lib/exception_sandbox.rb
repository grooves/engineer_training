class NoCountryError < StandardError
  attr_reader :country

  def initialize(message, country)
    @country = country
    super("#{message} #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise NoCountryError.new('invalid country name', country)
  end
end

begin
  currency_of(:italy)
rescue NoCountryError => e
  puts e.message
  puts e.country
end


# require 'date'
#
# def to_date(string)
#   Date.parse(string) rescue nil
# end
#
#
# puts to_date('2007-10-01')
# puts to_date('abcdef')


# def currency_of(country)
#   case country
#   when :japan
#     'yen'
#   when :us
#     'dollar'
#   when :india
#     'rupee'
#   else
#     raise ArgumentError, "invalid country: #{country}"
#   end
# end
#
# puts currency_of(:italy)
# currency = currency_of(:italy)
# puts currency.upcase


# require 'date'
#
# def convert_heisei_to_date(heisei_text)
#   m = heisei_text.match(/平成(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
#   year = m[:jp_year].to_i + 1988
#   month = m[:month].to_i
#   day = m[:day].to_i
#   begin
#     Date.new(year,month,day)
#   rescue ArgumentError
#     nil
#   end
# end
#
# puts convert_heisei_to_date('平成28年12月31日')
# puts convert_heisei_to_date('平成28年99月99日')
#

# def currency_of(country)
#   case country
#   when :japan
#     'yen'
#   when :us
#     'dollar'
#   when :india
#     'rupee'
#   else
#     raise ArgumentError, "invalid country: #{country}"
#   end
# end
#
# puts currency_of(:japan)
# puts currency_of(:italy)


# retry_count = 0
#
# begin
#   puts 'PGM start'
#   1/0
# rescue
#   retry_count += 1
#   if retry_count <= 3
#     puts "retry. (#{retry_count} times)"
#     retry
#   else
#     puts 'retry failure'
#   end
# end


# begin
#   1 / 0
# rescue NoMethodError
#   puts 'NoMethodError...'
# rescue NameError
#   puts 'NameError......'
# rescue
#   puts 'OtherError'
# end


# def method_1
#   puts 'method_1 start.'
#   begin
#     method_2
#   rescue
#     puts 'Exception occurs.'
#   end
#   puts 'method_1 end.'
# end
#
# def method_2
#   puts 'method_2 start.'
#   method_3
#   puts 'method_2 end.'
# end
#
# def method_3
#   puts 'method_3 start'
#
#   # 1/0
#   puts 'method_3 end'
# end
#
# method_1



# puts 'Start.'
# module Greeter
#   def hello
#     'hello'
#   end
# end
#
# begin
#   greeter = Greeter.new
# rescue
#   puts 'There is exception, but continue program.'
# end
#
# puts 'End.'
