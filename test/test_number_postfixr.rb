require 'helper'

class TestNumberPostfixr < Test::Unit::TestCase
   should "return '1st'" do
      assert_equal "1st", PostFixr.postfix(1)
   end
   
   should "return array of postfixed numbers" do
      ary = [1,2,3,4,5]
      fixed = PostFixr.postfix_array(ary)
      
      assert_equal "1st", fixed[0]
      assert_equal "2nd", fixed[1]
      assert_equal "3rd", fixed[2]
      assert_equal "4th", fixed[3]
      assert_equal "5th", fixed[4]
   end
   
   should "return teens correctly postfixed" do
      ary = [11,12,13,14,15]
      fixed = PostFixr.postfix_array(ary)
      
      assert_equal "11th", fixed[0]
      assert_equal "12th", fixed[1]
      assert_equal "13th", fixed[2]
      assert_equal "14th", fixed[3]
      assert_equal "15th", fixed[4]
   end
   
   should "return randomly selected postfixed numbers" do
      ary = [21, 1003, 79, 2, 96, 30]
      fixed = PostFixr.postfix_array(ary)
      
      assert_equal "21st", fixed[0]
      assert_equal "1003rd", fixed[1]
      assert_equal "79th", fixed[2]
      assert_equal "2nd", fixed[3]
      assert_equal "96th", fixed[4]
      assert_equal "30th", fixed[5]
   end
   
   should "return correctly postfixed numbers from Numeric" do
      assert_equal "1st", 1.postfix
      assert_equal "22nd", 22.postfix
      assert_equal "63rd", 63.postfix
      assert_equal "19th", 19.postfix
   end   
end
