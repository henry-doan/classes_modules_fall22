class Parent 
  def parent_method 
    puts "This is from the parent"
  end
end

class Child < Parent 
  #  to overide a method from the child 
  # to change in the child, call the same method 
  # by the same name 
  # def parent_method
  #   puts "This is patrick!"
  # end

  # to alter method, grab the code from the parent and alter 
  # by the same name 
  def parent_method
    puts "This is patrick!"
    super() # grab the info from the parent 
  end
end

p = Parent.new 
c = Child.new 

p.parent_method
c.parent_method