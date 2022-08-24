class Person
  attr_accessor :name, :age 

  def initialize(name, age)
    # Instance variable
    # scope, class, file, running instance
    @name = name 
    @age = age
  end

  def increase_age(num)
    @age += num
  end
end

# puts @age
# this is creating a bob instance of a class
# bob = Person.new('bob', 32)
# jill = Person.new('jill', 67)
# puts bob.name 
# puts bob.age 
# puts jill.name 
# puts jill.age 
# jill.increase_age(3)
# puts bob.age 
# puts jill.age 