# 2つの数字を加算するメソッド
def add(a, b)
  a + b
end
puts add(1, 2)

# 国に合わせて挨拶するメソッド
def greeting(country)
  if country == 'japan'
    puts 'こんにちは'
  elsif country == nil
    puts 'countryを入力してください'
  else
    puts 'hello'
  end
end
greeting(nil)
greeting('japan')