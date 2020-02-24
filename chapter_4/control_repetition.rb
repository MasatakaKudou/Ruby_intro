# 大域脱出
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        throw :done
      end  
    end
  end
end

puts '----------------'

# next
numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  next if n.even?
  puts n
end

puts '----------------'

# redo
foods = ['ピーマン', 'トマト', 'セロリ']
foods.each do |food|
  print "#{food}は好きですか？ => "
  answer = ['はい', 'いいえ'].sample
  puts answer

  redo unless answer == 'はい'
end

puts '----------------'

#redo(回数制限)
foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？ => "
  answer = 'いいえ'
  puts answer

  count += 1

  redo if answer != 'はい' && 'いいえ' && count < 2

  count = 0
end