# 文字列はStringクラスのオブジェクトである
puts 'abc'.class
# ヒアドキュメント
a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT
puts a
# ヒアドキュメント(<<-)
def some_method
  <<-TEXT
    これはヒアドキュメントです。
    <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end
puts some_method
# ヒアドキュメント(<<~)
def some_method
  <<~TEXT
    これはヒアドキュメントです。
    <<~を使うと最後の識別子をインデントさせることができます。
  TEXT
end
puts some_method
# フォーマットを指定して文字列を作成する
puts sprintf('%0.3f', 1.2)
# 配列を連結して1つの文字列にする
puts [10, 20, 30].join