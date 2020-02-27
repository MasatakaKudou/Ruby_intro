# クラスを作成してみる
class User
  attr_reader :first_name, :last_name, :age
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end
  # クラス内で氏名の作成を行うメソッド作成
  def full_name
  "#{first_name} #{last_name}"
  end
end

# ユーザーのデータを作成してみる
users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

# ユーザーのデータを表示する
users.each do |user|
  puts "氏名: #{user.full_name}、年齢: #{user.age}"
end