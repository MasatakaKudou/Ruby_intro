# rubyの繰り返し処理
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end
p sum

# 配列の要素を削除する条件を自由に指定できない
a = [1, 2, 3, 1, 2, 3]
a.delete(2)
p a

# 配列の要素を削除する条件を自由に指定する
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
  n.odd?
end
p a

# 偶数のみ、値を2倍にしてから値を10倍にしてから加算する
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
p sum

# rubyの繰り返し処理を{}を使って短文で書く
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
p sum