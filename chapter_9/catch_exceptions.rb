# 例外を捕捉して処理を実行する場合
puts 'Start.'
module Greeter
  def hello
    'hello'
  end
end
begin
  greeter = Greeter.new
rescue
  puts '例外が発生したが、このまま続行する'
end
puts 'End.'

puts '-----------------------------------'

# 例外処理の流れ
def method_1
  puts 'method_1 start.'
  begin
    method_2
  rescue
    puts '例外処理が発生しました'
  end
  puts 'method_1 end.'
end
def method_2
  puts 'method_2 start.'
  method_3
  puts 'method_2 end.'
end
def method_3
  puts 'method_3 start.'
  1 / 0
  puts 'method_3 end.'
end
method_1

puts '-----------------------------------'

# 例外オブジェクトから情報を取得する
begin
  1 / 0
rescue => e
  puts "エラークラス: #{e.class}"
  puts "エラーメッセージ: #{e.message}"
  puts "バックトレース -----"
  puts e.backtrace
  puts "-----"
end

puts '-----------------------------------'

# クラスを指定して捕捉する例外
begin
  1 / 0
rescue ZeroDivisionError
  puts "0で除算しました"
end