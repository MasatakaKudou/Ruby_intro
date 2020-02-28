# yield
def greeting
  puts 'おはよう'
  if block_given?
    yield
  end
  puts 'こんばんは'
end
greeting
greeting do
  puts 'こんにちは'
end

puts '-----------------------'

def greeting_2
  puts 'おはよう'
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end
greeting_2 do |text|
  text * 2
end

puts '-----------------------'

# ブロックをメソッドの引数として受け取る
def greeting_3(&block)
  puts 'おはよう'
  unless block.nil?
    text = block.call('こんにちは')
    puts text
  end
  puts 'こんばんは'
end
greeting_3 do |text|
  text * 2
end

puts '-----------------------'

# ブロックを他のメソッドに渡すパターン
def greeting_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  greeting_common(texts, &block)
end
def greeting_en(&block)
  texts = ['good morning', 'hello', 'good evening']
  greeting_common(texts, &block)
end
def greeting_common(texts, &block)
  puts texts[0]
  puts block.call(texts[1])
  puts texts[2]
end
greeting_ja do |text|
  text * 2
end
greeting_en do |text|
  text.upcase
end

puts '-----------------------'

# ブロック引数の個数に応じて処理を分ける
def greeting_4(&block)
  puts 'おはよう'
  text = 
    if block.arity == 1
      yield 'こんにちは'
    elsif block.arity == 2
      yield 'こんに', 'ちは'
    end
  puts text
  puts 'こんばんは'
end
greeting_4 do |text|
  text * 2
end
greeting_4 do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end