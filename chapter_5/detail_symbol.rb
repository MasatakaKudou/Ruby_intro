# シンボルと文字列の関係
string = 'apple'
symbol = :apple
p string == symbol
p string.to_sym == symbol
p string + symbol.to_s