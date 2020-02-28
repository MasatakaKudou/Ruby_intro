# procかlambdaか判断する
add_proc = Proc.new { |a, b| a + b }
p add_proc.class
p add_proc.lambda?
add_lambda = ->(a, b) { a + b }
p add_lambda.class
p add_lambda.lambda?

puts '----------------------------'

# ラムダは引数がちょうどないとエラーが出る