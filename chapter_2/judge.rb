t1 = true
t2 = true
f1 = false
f2 = false
# 条件1も条件2も真であれば真、それ以外は偽
puts t1 && t2
puts t1 && f1
# 条件1か条件2のいずれかが真であれば真、両方偽であれば偽
puts t1 || f1
puts f1 || f2
# 真偽値を逆にする
puts !t1
puts !(t1 && f1)

# ifの例
country = 'italy'
if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
else
  puts '???'
end