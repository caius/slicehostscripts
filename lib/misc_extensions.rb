class String
  
  # Makes sure the string ends in a .
  def periodify!
    self.match(/\.$/) ? self : replace("#{self}.")
  end
  
  def periodify
    dup.periodify!
  end
  
end
