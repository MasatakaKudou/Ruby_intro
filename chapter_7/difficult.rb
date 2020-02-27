# エイリアスメソッドの定義
class User
  def hello
    'Hello'
  end
  alias greeting hello
end
user = User.new
p user.hello
p user.greeting

puts '---------------------------'

# メソッドの削除
class User_1
  undef freeze
end
user = User_1.new

puts '---------------------------'

# ネストしたクラスの定義
class User_2
  class BloodType
    attr_reader :type
    def initialize(type)
      @type = type
    end
  end
end
blood_type = User_2::BloodType.new('B')
p blood_type.type

puts '---------------------------'

# 演算子の挙動を独自に再定義する
class User_3
  def name=(value)
    @name = value
  end
end
user = User_3.new
user.name = 'Alice'
p user

puts '---------------------------'

# 等値を判断するメソッドや演算子を理解する
a = 'abc'
b = 'abc'
p a.equal?(b)
c = a
p a.equal?(c)

p 1 == 1.0

p 1.eql?(1.0)