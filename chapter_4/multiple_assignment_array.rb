# 配列を使って多重代入
a, b = [1, 2]
p a
p b

# 右辺の数が少ない場合、nilが入る
c, d = [10]
p c
p d

# 右辺の数が多い場合、はみ出した値が切り捨てられる
e, f = [100, 200, 300]
p e
p f

# 戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
p "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"

# 多重代入して別々の変数として受け取る
quotient, remainder = 14.divmod(3)
p "商=#{quotient}, 余り=#{remainder}"