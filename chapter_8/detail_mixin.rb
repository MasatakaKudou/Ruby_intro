# includeされたモジュールの有無を確認する
module Loggable
end
class Product
  include Loggable
end
p Product.include?(Loggable)
p Product.included_modules
p Product.ancestors

puts '---------------------------------'

# include先のメソッドを使うモジュール
module Taggable
  def price_tag
    "#{price}円"
  end
end
class Product_2
  include Taggable
  def price
    1000
  end
end
product = Product_2.new
p product.price_tag

puts '---------------------------------'

# Enumerableモジュール
p Array.include?(Enumerable)
p Hash.include?(Enumerable)
p Range.include?(Enumerable)

puts '---------------------------------'

# Comparableモジュール

p 2 <=> 1
p 2 <=> 2
p 1 <=> 2
p 2 <=> 'abc'
p 'xyz' <=> 'abc'
p 'abc' <=> 'abc'
p 'abc' <=> 'xyz'
p 'abc' <=> 123

p 2 > 1
p 2 <= 1
p 2 == 1
p 'abc' > 'xyz'
p 'abc' <= 'xyz'
p 'abc' == 'abc'

puts '---------------------------------'

# 音楽のテンポを表すクラス
class Tempo
  include Comparable
  attr_reader :bpm
  def initialize(bpm)
    @bpm = bpm
  end
  def <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end
end
t_120 = Tempo.new(120)
t_180 = Tempo.new(180)
p t_120 > t_180
p t_120 <= t_180
p t_120 == t_180

puts '---------------------------------'

# Kernelモジュール
p Object.include?(Kernel)
p self
p self.class
class User
  p self
  p self.class
end

puts '---------------------------------'

# モジュールとインスタンス変数
module NameChanger
  def change_name
    @name = 'ありす'
  end
end
class User
  include NameChanger
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
user = User.new('alice')
p user.name
user.change_name
p user.name

puts '---------------------------------'

# オブジェクトに直接ミックスイン
module Loggable_2
  def log(text)
    puts "[LOG] #{text}"
  end
end
s = 'abc'
s.extend(Loggable_2)
s.log('Hello.')