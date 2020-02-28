# 環境変数MY_NAMEの値を取得
name = ENV['MY_NAME']
# 一番目と二番目の起動時引数を取得する
email = ARGV[0]
age = ARGV[1]
puts "name: #{name}, email: #{email}, age: #{age}"
p RUBY_VERSION
