class Product
  # クラスインスタンス変数
  @@name = 'Product'
  def self.name
    # クラスインスタンス変数
    @@name
  end
  def initialize(name)
    # インスタンス変数
    @@name = name
  end
  def name
    # インスタンス変数
    @@name
  end
end
p Product.name
product = Product.new('A great movie')
p product.name
p Product.name

puts '----------------------------------'

class DVD < Product
  @@name = 'DVD'
  def self.name
    # クラスインスタンス変数
    @@name
  end
  def upcase_name
    # インスタンス変数
    @@name.upcase
  end
end
p Product.name
p DVD.name
product = Product.new('A great movie')
p product.name
dvd = DVD.new('An awesome film')
p dvd.name
p dvd.upcase_name
p Product.name
p DVD.name

puts '----------------------------------'

# グローバル変数と組み込み変数
$program_name = 'Awesome program'
class Program
  def initialize(name)
    $program_name = name
  end
  def self.name
    $program_name
  end
  def name
    $program_name
  end
end
p Program.name
program = Program.new('Super Program')
p program.name
p Program.name
p $program_name