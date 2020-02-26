# 正規表現(d)
text = <<TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT
p text.scan /\d\d-\d\d\d\d-\d\d\d\d/

puts '-----------------'

# 正規表現({m,n}, {n})
text = <<TEXT
名前：伊藤淳一
電話：03-1234-5678
電話：090-1234-5678
電話：0795-12-3456
電話：04992-1-2345
住所：兵庫県西脇市板波町1-2-3
TEXT
p text.scan /\d{2,5}-\d{1,4}-\d{4}/

puts '-----------------'

# 正規表現([AB])
text = <<TEXT
名前：伊藤淳一
電話：03(1234)5678
電話：090-1234-5678
電話：0795(12)3456
電話：04992-1-2345
住所：兵庫県西脇市板波町1-2-3
TEXT
p text.scan /\d{2,5}[-()]\d{1,4}[-)]\d{4}/

puts '-----------------'

# 正規表現([AB])
text = <<-TEXT
クープバゲットのパンは美味しかった。
今日はクープ バゲットさんに行きました。
クープ　バゲットのパンは最高。
ジャムおじさんのパン、ジャムが入ってた。
また行きたいです。クープ・バゲット。
クープ・バケットのパン、売り切れだった（><）
TEXT
p text.split(/\n/).grep(/クープ.?バ[ゲケ]ット/)

puts '-----------------'

# 正規表現を用いた文字列の検索
text = <<Text
I love Ruby.
Python is a great language.
Java and JavaScript are different.
Text
p text.scan(/[A-Z][A-Za-z]+/)

puts '-----------------'

# 正規表現を用いた文字列の置換
text = <<TEXT
私の郵便番号は1234567です。
僕の住所は6770056 兵庫県西脇市板波町1234だよ。
TEXT
puts text.gsub(/(\d{3})(\d{4})/, '\1-\2')

puts '-----------------'

# HTMLタグをCSVへ変換する
html = <<TEXT
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
<option value="ps4">プレステ4</option><option value="gb">ゲームボーイ</option>
</select>
TEXT

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>([^<]*)<\/option>/, '\1,\2')
puts replaced

puts '-----------------'