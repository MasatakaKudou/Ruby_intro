# モジュールに特異メソッドを定義する
module Loggable
  def self.log(text)
    puts "[LOG] #{text}"
  end
end
Loggable.log('Hello.')
module Loggable_2
  class << self
    def log(text)
      puts "[LOG] #{text}"
    end
  end
end
Loggable_2.log('Hello.')

# module_functionメソッド
module Loggable_3
  def log(text)
    puts "[LOG] #{text}"
  end
  module_function :log
end
Loggable_3.log('Hello.')
class Product
  include Loggable_3
  def title
    log 'title is called.'
    'A great movie'
  end
end
product = Product.new
p product.title