require 'minitest/autorun'
# 成功例
class SuccessTest < Minitest::Test
  def test_success
    assert_equal 'RUBY', 'ruby'.upcase
  end
end
# 失敗例
class FailureTest < Minitest::Test
  def test_failure
    assert_equal 'RUBY', 'ruby'.capitalize
  end
end
# 実行不可能
class ErrorTest < Minitest::Test
  def test_error
    assert_equal 'RUBY', nil.upcase
  end
end