# デフォルト値が動的に変化するメソッド
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end
def bar
  'BAR'
end
foo

# ?で終わるメソッド(真偽値を返すメソッド)
def multiple_of_three?(n)
  puts n % 3 == 0
end
multiple_of_three?(4)
multiple_of_three?(5)
multiple_of_three?(6)

# !で終わるメソッド(使用する際は注意が必要なメソッド)
def reverse_upcase!(s)
  puts s.reverse!.upcase!
end
s = 'ruby'
reverse_upcase!(s)
puts s

# 参照の概念を理解する
a = 'hello'
b = 'hello'
c = b
def m!(d)
  d.upcase!
end
m!(c)
puts b
puts c
puts a

# ライブラリを読み込む
require 'date'
puts Date.today