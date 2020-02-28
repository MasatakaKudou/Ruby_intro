# 名前空間を分けて名前の衝突を防ぐ
module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end
module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end
p Baseball::Second.new('Alice', 13)
p Clock::Second.new(13)

# ネストなしで名前空間付きのクラスを定義する
module Baseball_2
end
class Baseball_2::Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end