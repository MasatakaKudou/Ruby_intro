# //の中で#{}を使って変数の中身を展開
pattern = '\d{3}-\d{4}'
p '123-4567' =~ /#{pattern}/

puts '----------------------'

# case
text = '03-1234-5678'
case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end

puts '----------------------'

# 正規表現オブジェクト作成時のオプション
p 'HELLO' =~ /hello/i # 大文字と小文字の違いを無視する
p "Hello\nBye" =~ /Hello.Bye/m # .が改行文字にマッチされる
regexp = /
  \d{3} # 郵便番号の先頭3桁
  -     # 区切り文字のハイフン
  \d{4} # 郵便番号の末尾文字
/x
p '123-4567' =~ regexp

puts '----------------------'

# 組み込み変数でマッチの結果を取得する
text = '私の誕生日は1997年7月17日です。'
text =~ /(\d+)年(\d+)月(\d+)日/
p $~
p $&
p $1
p $2
p $3

puts '----------------------'

# Regexp.last_matchでマッチの結果を取得する
text = '私の誕生日は1997年7月17日'
text =~ /(\d+)年(\d+)月(\d+)日/
p Regexp.last_match
p Regexp.last_match(0)
p Regexp.last_match(1)
p Regexp.last_match(2)
p Regexp.last_match(3)

puts '----------------------'

# 組み込み変数を書き換えないmatch?メソッド
p /\d{3}-\d{4}/.match?('123-4567')