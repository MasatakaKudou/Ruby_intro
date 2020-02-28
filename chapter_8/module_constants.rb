# モジュールに定数を定義する
module Loggable
  PREFIX = '[LOG]'.freeze
  def log(text)
    puts "#{PREFIX} #{text}"
  end
end
p Loggable::PREFIX

puts '------------------------------------'

# モジュール関数や定数を持つモジュールの例
p Math.sqrt(2)
class Calculator
  include Math
  def calc_sqrt(n)
    sqrt(n)
  end
end
calculator = Calculator.new
p calculator.calc_sqrt(2)
p Math::E
p Math::PI