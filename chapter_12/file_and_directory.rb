# FileクラスとDirクラス
p File.exists?('./secret.txt')
p Dir.exists?('./secret_folder')

# ファイルを読み書きする
File.open('./lib/fizz_buzz.rb', 'r') do |f|
  puts f.readlines.count
end
File.open('./lib/hello_world.txt', 'w') do |f|
  f.puts 'Hello, world!'
end

# FileUtils
require 'fileutils'
FileUtils.mv('./lib/hello_world.txt', './lib/hello_world.rb')

# Pathname
require 'pathname'
lib = Pathname.new('./lib')
p lib.file?
p lib.directory?
p lib.join('sample.txt').to_s