require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def setup
      @my_class = ::MiniTestPractice::MyClass.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def enough_length?

      assert_equal true, @my_class.enough_length?('00000000')
      assert_equal true, @my_class.enough_length?('000')
      assert_equal false, @my_class.enough_length?('00')
      assert_equal false, @my_class.enough_length?('000000000')
  end

  def check_number?

      assert_equal true, @my_class.check_number?(0)
      assert_equal true, @my_class.check_number?(100)
      assert_equal true, @my_class.check_number?(2000)
      assert_equal false, @my_class.check_number?(2001)
      assert_equal false, @my_class.check_number?(10000)

  end

  def test_odd?
      assert_equal true, @my_class.odd?(1)
      assert_equal false, @my_class.odd?(2)
  end
  
end
