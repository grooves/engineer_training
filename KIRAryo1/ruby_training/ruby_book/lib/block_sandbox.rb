
def greeting(&block)
  puts 'oha'
  unless block.nil?
    text = block.call('koncha')
    puts text
  end
  puts 'banwa'
end

greeting
puts "---------"
greeting do |text|
  text * 3
end






# def greeting
#   puts 'oha'
#
#   # yield 'koncha' というのが、メソッド呼び出し時のブロックに与える引数を表している
#   # text = yield でブロックの実行結果の戻り値を受け取る
#   text = yield 'koncha'
#
#   puts text
#
#   puts 'banwa'
# end
#
# greeting do |text|
#   text * 2
# end
#



#
# def greeting
#   puts 'oha'
#   if block_given?
#     yield
#   end
#   puts 'banwa'
# end
#
# greeting
#
# greeting do
#   puts 'koncha'
# end
