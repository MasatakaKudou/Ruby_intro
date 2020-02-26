# scan(マッチした部分を配列に入れて返す)
p '123 456 789'.scan(/\d+/)
p '1997年7月17日 2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)
p '1997年7月17日 2016年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
p '1997年7月17日 2016年12月31日'.scan(/\d+年\d+月\d+日/)

puts '-----------------'

# [], slice, slice!(マッチした部分を抜き出す)
text = '郵便番号は123-4567です'
p text[/\d{3}-\d{4}/]
text = '誕生日は1997年7月17日です'
p text[/(\d+)年(\d+)月(\d+)日/]
p text[/(\d+)年(\d+)月(\d+)日/, 3]
p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :day]
p text[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, 'day']

text = '郵便番号は123-4567です'
p text.slice(/\d{3}-\d{4}/)
text = '誕生日は1997年7月17日です'
p text.slice(/(\d+)年(\d+)月(\d+)日/, 3)

text = '郵便番号は123-4567です'
p text.slice!(/\d{3}-\d{4}/)
p text

puts '-----------------'

# split(マッチした文字列を区切り文字にして文字列を分解し、配列を返す)
text = '123,456-789'
p text.split(',')
p text.split(/,|-/)

puts '-----------------'

# gsub, gsub!(マッチした文字列を第二引数の文字列で書き換える)
text = '123,456-789'
p text.gsub(',', ':')
p text.gsub(/,|-/, ':')

text = '誕生日は1977年7月17日です'
p text.gsub(/(\d+)年(\d+)月(\d+)日/, '\1-\2-\3')
p text.gsub(
  /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,
  '\k<year>-\k<month>-\k<day>'
)

text = '123,456-789'
hash = { ',' => ':', '-' => '/' }
p text.gsub(/,|-/, hash)
text = '123,456-789'
p text.gsub(/,|-/) { |matched| matched == ',' ? ':' : '/' }

text = '123,456-789'
text.gsub!(/,|-/, ':')
p text

puts '-----------------'