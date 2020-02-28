# メソッドの戻り値として使う
def some_method(n)
  begin
    1 / n
    'OK'
  rescue
    'error'
  ensure
    'ensure'
  end
end
p some_method(1)
p some_method(0)

puts '---------------------------'

# begin/endを省略するrescue修飾子
require 'date'
def to_date(string)
  Date.parse(string) rescue nil
end
p to_date('2017-01-01')
p to_date('abcdef')

puts '---------------------------'

# rescueした例外を再度発生させる
def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Bazz'
  else
    n.to_s
  end
rescue => e
  puts "[LOG] エラーが発生しました: #{e.class} #{e.message}"
end
fizz_buzz(nil)

puts '---------------------------'

# 独自の例外クラスを定義する
class NoCountryError < StandardError
  attr_reader :country
  def initialize(message, country)
    @country = country
    super("#{message} #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise NoCountryError.new('無名な国名です。', country)
  end
end

begin
  currency_of(:italy)
rescue NoCountryError => e
  puts e.message
  puts e.country
end