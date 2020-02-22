# 左辺から順番に評価していく
puts 1 && 2 && 3
puts 1 && nil && 3
puts 1 && false && 3

puts nil || false
puts false || nil
puts 2 || false || nil
puts nil || false || 2 || 3

puts '-----------------'
# 優先順位
t1 = true
t2 = true
f1 = false
f2 = false

puts !f1 || t1
puts not(f1 || t1)
puts t1 || t2 && f1
puts (t1 or t2 and f1)

puts '-----------------'
# unless文
status = 'error'
unless status == 'ok'
  puts '何か異常があります'
end
status = 'ok'
unless status == 'ok'
  puts '何か異常があります'
else
  puts '正常です'
end
status = 'error'
puts '何か異常があります' unless status == 'ok'

# case文
country = 'us'
case country
when 'japan'
  puts 'こんにちは'
when 'us'
  puts 'Hello'
when 'italy'
  puts 'ciao'
else
  '???'
end

# 三項演算子
n = 11
m = n > 10 ? '10より大きい' : '10以下'
puts m