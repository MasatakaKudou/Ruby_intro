# 添え字を渡しながら配列を処理する
fruits = ['apple', 'orange', 'melon']
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }
fruits.map.with_index { |fruit, i| puts "#{i}: #{fruit}" }
p fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }

puts '----------'

# 添え字を0以外の数値から開始する
fruits = ['apple', 'orange', 'melon']
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
fruits.map.with_index(10) { |fruit, i| puts "#{i}: #{fruit}" }

# 配列がブロック引数
dimensions = [
  [10, 20],
  [30, 40],
  [50, 60]
]
areas = []
dimensions.each do |dimension|
  length = dimension[0]
  width = dimension[1]
  areas.push(length * width)
end
p areas