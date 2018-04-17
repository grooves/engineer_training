puts 1 + 2

a = 'Hello, world!'
puts a

b = 'こんにちは'
puts b

c = (5 + 1 - 2) * 3

def add(a,b)
   a + b
end

country = 'italy'
greeting =
  if country == 'japan'
    'こんにちは'
  elsif country == 'us'
    'hello'
  elsif country == 'italy'
    'ciao'
  else
    '???'
  end
puts greeting

point = 7
day = 1

point *= 5 if day == 1
puts point
