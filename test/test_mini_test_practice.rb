require 'minitest_helper'

class TestMiniTestPractice < MiniTest::Unit::TestCase
  def setup
      @my_class = ::MiniTestPractice::MyClass.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::MiniTestPractice::VERSION
  end

  def test_hello
      
      assert_equal "Hello",capture_io{ @my_class.hello}[0]
  
end


  def test_fizz_buzz

      assert_equal "FizzBuzz", @my_class.fizz_buzz(15)
      assert_equal "Fizz", @my_class.fizz_buzz(3)
      assert_equal "Buzz", @my_class.fizz_buzz(5)
      assert_equal "Buzz", @my_class.fizz_buzz(10)
      assert_equal "Fizz", @my_class.fizz_buzz(6)
      assert_equal  nil, @my_class.fizz_buzz(4)


  end 



  def test_devide

      assert_equal 2, @my_class.devide(2,1)
      assert_equal 1, @my_class.devide(3,2)
      assert_throws( Exception ,'divide 0 ERR') { @my_class.devide(3,0)}

 end


  def test_enough_length?

      assert_equal true, @my_class.enough_length?('00000000')
      assert_equal true, @my_class.enough_length?('000')
      assert_equal false, @my_class.enough_length?('00')
      assert_equal false, @my_class.enough_length?('000000000')
  end

  def test_check_number?

      assert_equal false, @my_class.check_number?(0)
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
