# デフォルトで継承されるObjectクラス
class User
end
user = User.new
p user.to_s
p user.nil?
p User.superclass
p user.methods.sort

puts '--------------------------------------------------------------------'

# オブジェクトのクラスを確認する
user = User.new
p user.class

puts '--------------------------------------------------------------------'

# 他のクラス継承したクラスを作る
class Product
end
class DVD < Product
end
p DVD.superclass

puts '--------------------------------------------------------------------'

# superでスーパークラスのメソッドを呼び出す
class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end
product = Product.new('A great movie', 1000)
p product.name
p product.price

class DVD < Product
  attr_reader :running_time
  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
end
dvd = DVD.new('A great movie', 1000, 120)
p dvd.name
p dvd.price
p dvd.running_time

puts '--------------------------------------------------------------------'

# メソッドのオーバーライド
class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
  def to_s
    "name: #{name}, price: #{price}"
  end
end
product = Product.new('A great movie', 1000)
p product.to_s

class DVD < Product
  attr_reader :running_time
  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
  def to_s
    "#{super}, runnig_time: #{running_time}"
  end
end
dvd = DVD.new('An awesome film', 3000, 120)
p dvd.to_s

# クラスメソッドの継承
class Foo
  def self.hello
    'hello'
  end
end
class Bar < Foo
end
p Foo.hello
p Bar.hello