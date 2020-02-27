# 変数に代入するような形式でメソッドを呼び出すことができる
class User
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def name=(value)
    @name = value
  end
end
user = User.new('Alice')
user.name = 'Bob'
p user.name

puts '----------------------'

# attr_accessor(インスタンス変数の読み書き)
class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
user.name = 'Bob'
p user.name

puts '----------------------'

# attr_reader(インスタンス変数の読み取り専用)
class User
  attr_reader :name
  def initialize(name)
    @name = name
  end
end
user = User.new('Alice')
p user.name

puts '----------------------'

# 定数
class Product
  DEFAULT_PRICE = 0
  attr_reader :name, :price
  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end
product = Product.new('A free movie')
p product.price