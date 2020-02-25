# ハッシュを使った繰り返し処理
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.each do |key, value|
  puts "#{key}: #{value}"
end

puts '--------------'

# ハッシュの同値比較
a = { 'x' => 1, 'y' => 2, 'z' => 3 }
b = { 'x' => 1, 'y' => 2, 'z' => 3 }
c = { 'z' => 3, 'y' => 2, 'x' => 1 }
d = { 'x' => 10, 'y' => 2, 'z' => 3 }
p a == b
p a == c
p a == d

puts '--------------'

# ハッシュのサイズを取得
p a.size

puts '--------------'

# ハッシュの要素を削除
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.delete('japan')
p currencies

puts '--------------'

# キーが見つからない時の戻り値を作成できる
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
p currencies.delete('italy') { |key| "Not found: #{key}" }