# include
module Loggable
  private
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable
  def title
    log 'title is called.'
    'A great movie'
  end
end

class User
  include Loggable
  def name
    log 'name is called.'
    'Alice'
  end
end

product = Product.new
p product.title
user = User.new
p user.name

puts '-------------------------------------------'

# extend
module Loggable_2
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product_2
  extend Loggable_2
  def self.create_products(names)
    log 'create_products is called.'
  end
end

Product_2.create_products([])
Product_2.log('Hello.')