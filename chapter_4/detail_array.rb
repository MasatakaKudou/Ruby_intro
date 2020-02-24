# 添え字を位置と長さを指定して取得する
a = [1, 2, 3, 4, 5]
p a[1, 3]

# 添え字を複数指定して取得する
a = [1, 2, 3, 4, 5]
p a.values_at(0, 2, 4)

# 最後の要素の取得
a = [1, 2, 3, 4, 5]
p a[a.size - 1]
p a.last

# 添え字に負の数を使用
a = [1, 2, 3]
p a[-1]
p a[-2] 
p a[-2, 2]

# 配列を展開して複数の引数として渡す
a = []
b = [2, 3]
a.push(1)
a.push(*b)
p a

# 可変長引数
def greeting(*names)
  "#{names.join('と')}、こんにちは！"
end
p greeting('A')
p greeting('A', 'B', 'C')

# 文字列の配列を作る
p %w(apple melon orange)

# 文字列を配列に分解する
p 'Ruby'.chars
p 'Ruby,Java,PHP'.split(',')

# 配列に初期値を設定する
a = Array.new(5)
p a
a = Array.new(5, 0)
p a
a = Array.new(10) { |n| n % 3 + 1 }
p a