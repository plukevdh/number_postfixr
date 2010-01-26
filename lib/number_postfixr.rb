class PostFixr
   @@postfix = ["st", "nd", "rd", "th"]

   def self.postfix(number)
      fix = number.to_s
      if fix.length < 2 or (fix.length == 2 and fix[0] != "1") or (fix.length > 2)
         if fix[-1] == "1"
            fix += @@postfix[0]
         elsif fix[-1] == "2"
            fix += @@postfix[1]
         elsif fix[-1] == "3"
            fix += @@postfix[2]
         else
            fix += @@postfix[3]
         end
      else
         fix += @@postfix[3]
      end
      
      return fix
   end
   
   def self.postfix_array(array)
      fix = []
      array.each do |elem|
         fix << postfix(elem)
      end
      
      return fix
   end
end