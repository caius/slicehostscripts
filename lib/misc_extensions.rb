class String
  
  # Makes sure the string ends in a .
  def periodify
    self.match(/\.$/) ? self : "#{self}."
  end
  
end
