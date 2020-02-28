# eval
code = '[1, 2, 3].map { |n| n * 10 }'
p eval(code)

# ``でOSコマンドとして実行する
puts `cat lib/fizz_buzz.rb`

# sendメソッド
str = 'a,b,c'
p str.send('upcase')
p str.send('split', ',')