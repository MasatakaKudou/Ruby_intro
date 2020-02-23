# map
numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10 }
p new_numbers

# select
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
p even_numbers

# reject
numbers = [1, 2, 3, 4, 5, 6]
non_multiple_of_three = numbers.reject { |n| n % 3 == 0 }
p non_multiple_of_three

# find
numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find { |n| n.even? }
p even_number

# inject(number)
numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n }
p sum

# inject(string)
p ['Mon', 'Tue', 'Wed', "Thu", 'Fri', 'Sat'].inject('Sun') { |result, s| result + s }

# &とシンボルでもっと簡潔に書く
p ['ruby', 'java', 'perl'].map { |s| s.upcase }
p ['ruby', 'java', 'perl'].map(&:upcase)
p [1, 2, 3, 4, 5, 6].select { |n| n.odd? }
p [1, 2, 3, 4, 5, 6].select(&:odd?)