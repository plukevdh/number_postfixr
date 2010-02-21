class PostFixr
   def self.postfix(number)
      fix = number.to_i.abs
      if (10...20).include?(fix) then
        fix.to_s << 'th'
      else
        fix.to_s << %w{th st nd rd th th th th th th}[fix % 10]
      end
   end
   
   def self.postfix_array(array)
      fix = []
      array.each do |elem|
         fix << postfix(elem)
      end
      
      return fix
   end
end

class Numeric
  def postfix
     PostFixr.postfix(self)
  end
end
