regex = /\d{3}-\d{4}/
p regex.class

puts '--------------------'

# 正規表現と文字列を比較
if '123-4567' =~ regex
  puts 'マッチしました'
else
  puts 'マッチしませんでした'
end

puts '--------------------'

# 年月日の数字だけ抜き出す
text = '私の誕生日は1997年7月17日です。'
m = /(\d+)年(\d+)月(\d+)日/.match(text)
p m[1]
p m[2]
p m[3]
p m[0]

puts '--------------------'

# キャプチャの結果に名前をつける
text = '私の誕生日は1997年7月17日です。'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
p m[:year]
p m[:month]
p m[:day]
p m[0]

puts '--------------------'

# 比較もできる(しかし、逆にしたり代入したら使えない)
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
end