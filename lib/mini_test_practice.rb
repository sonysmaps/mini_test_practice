require "mini_test_practice/version"

module MiniTestPractice
 
  class MyClass

    def odd?(value)
      if value % 2 == 1 
        return true
      else
        return false
      end
    end

    def check_number?(value)
#      if  value.between?(1:9999) and value.even? 
      if    (value >= 1) and (value <= 9999) and (value % 2) == 0
        return true
      else
        return false
      end
    end
  
    def enough_length?(value)
       if value.length >=3 && value.length <= 8 then
        return true
      end
        return false
    end
  end
end






