
def greeting(&block)
  puts 'おはよう'
  text =
    if block.arity == 1
      yield ' こんにちは'
    elsif block.arity == 2
      yield 'こんに', 'ちは'
    end
  puts text
  puts 'こんばんは'
end

greeting do |text|
  text * 2
end

greeting do |text_1, text_2|
  text_1 * 2 + text_2 * 3
end


# def greeting_ja(&block)
#   texts = ['おはよう', 'こんにちは', 'こんばんは']
#   greeting_common(texts, &block)
# end
#
# def greeting_en(&block)
#   texts = ['good morning', 'hello', 'good evening']
#   greeting_common(texts, &block)
# end
#
# def greeting_common(texts, &block)
#   puts texts[0]
#   puts block.call(texts[1])
#   puts texts[2]
# end
#
#
# greeting_ja do |text|
#   text * 2
# end
#
# puts "---------"
#
# greeting_en do |text|
#   text.upcase
# end


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
