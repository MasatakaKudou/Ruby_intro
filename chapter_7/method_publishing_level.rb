# public
class User
  def hello
    'Hello!'
  end
end
user = User.new
p user.hello

# private
# class User_1
#   private
#   def hello
#     'Hello!'
#   end
# end
# user = User_1.new
# p user.hello

# 公開レベルを変更する場合
class User_2
  def foo
    'foo'
  end
  def bar
    'bar'
  end
  private :foo, :bar
  def baz
    'baz'
  end
end
user = User_2.new
p user.baz

# protectedメソッド
class User_3
  attr_reader :name
  def initialize(name, weight)
    @name = name
    @weight = weight
  end
  def heavier_than?(other_user)
    other_user.weight < @weight
  end
  protected
  def weight
    @weight
  end
end
alice = User_3.new('Alice', 50)
bob = User_3.new('Bob', 60)
p alice.heavier_than?(bob)
p bob.heavier_than?(alice)