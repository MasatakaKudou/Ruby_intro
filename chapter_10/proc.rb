# Procインスタンスを作成する
hello_proc = Proc.new do
  'Hello!'
end
hello_proc = Proc.new { 'Hello!' }
p hello_proc.call
add_proc = Proc.new { |a, b| a + b }
p add_proc.call(10, 20)

puts '-------------------------------'

# Procオブジェクトをブロックの代わりに渡す
def greeting(&block)
  puts block.class
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end
greeting do |text|
  text * 2
end
repeat_proc = Proc.new { |text| text * 2 }
greeting(&repeat_proc)

puts '-------------------------------'

# Procオブジェクトを普通の引数として渡す
def greeting(arrange_proc)
  puts 'おはよう'
  text = arrange_proc.call('こんにちは')
  puts text
  puts 'こんばんは'
end
repeat_proc = Proc.new { |text| text * 2 }
greeting(repeat_proc)

puts '-------------------------------'

# 3つのProcオブジェクトを渡す
def greeting(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end
shuffle_proc = Proc.new { |text| text.chars.shuffle.join }
repeat_proc = Proc.new { |text| text * 2 }
question_proc = Proc.new { |text| "#{text}?" }
greeting(shuffle_proc, repeat_proc, question_proc)