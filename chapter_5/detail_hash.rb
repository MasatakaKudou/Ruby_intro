# ハッシュで使用頻度の高いメソッド(keys, values, has_key?/key?/include?/member?)
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
p currencies.keys
p currencies.values
p currencies.has_key?(:japan)
p currencies.has_key?(:italy)

puts '------------------------'

# **でハッシュを展開させる
h = { us: 'dollar', india: 'rupee' }
p ({ japan: 'yen' }.merge(h))

puts '------------------------'

# 任意のキーワードを受け付ける
def buy_burger(menu, drink: true, potato: true, **others)
  puts others
end
buy_burger('fish', drink: true, potato: false, salad: true, chicken: false)

puts '------------------------'

# ハッシュから配列へ変換
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
p currencies.to_a

puts '------------------------'

# 配列からハッシュへ変換
array = [[:japan, 'yen'], [:us, 'dollar'], [:india, 'rupee']]
p array.to_h

puts '------------------------'

# ハッシュの初期値を理解する
h = Hash.new('hello')
p h[:foo]

h = Hash.new('hello')
a = h[:foo]
b = h[:bar]
p a
p b
p a.equal?(b)
a.upcase!
p a
p b

puts '------------------------'

# ハッシュにブロックを与えるとブロック引数としてハッシュ自身と見つからなかったキーが渡されます
h = Hash.new { |hash, key| hash[key] = 'hello' }
h[:foo]
h[:bar]
p h