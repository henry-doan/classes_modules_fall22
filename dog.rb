class Dog 
  attr_accessor :name, :color, :age 

  def initialize(name, color, age)
    @name = name 
    @color = color 
    @age = age 
  end

  # instance method - change on different instances
  def info 
    puts "#{@name} is the color of #{@color} and is #{@age} years old"
  end

  # class method - not change, and only apply to the class , start with self.
  def self.bark
    puts 'Woof'
  end

end

winnie = Dog.new('Winnie', 'Black', 4)
jack = Dog.new('Jack', 'Black and Brown', 8)
kevin = Dog.new('Kevin', 'White', 5)

winnie.info 
jack.info 
kevin.info

Dog.bark 