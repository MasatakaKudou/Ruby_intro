# 継承関係とrescue節の順番に注意する
begin
  'abc'.foo
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
end

puts '----------------------------'

# その他のエラーを捕捉する
begin
  1 / 0
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
rescue
  puts 'その他のエラーです'
end

puts '----------------------------'

# 例外時にもう一度処理をやり直す
retry_count = 0
begin
  puts '処理を開始します.'
  1 / 0
rescue
  retry_count += 1
  if retry_count <= 3
    puts "retryします. (#{retry_count}回目)"
    retry
  else
    puts 'retryに失敗しました.'
  end
end