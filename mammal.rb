class Mammal 
  # attr - values of an object, object have? 
  # read write
  attr_accessor :name, :age
  
  # att_reader - able to just read 
  # att_writer - able to write

  def initialize(name, age)
    @name = name 
    @age = age
  end

  def breathe 
    puts "inhale and exhale"
  end

  def speak
    raise "You have to override this method"
  end
end

class Cat < Mammal
  def initialize(name, age)
    super(name, age)
  end

  def speak
    puts "Meow"
  end
end

bella = Cat.new("Bella", 1)
keanu = Cat.new("Keanu", 6)
skully = Cat.new("Skully", 7)

bella.breathe
bella.speak
keanu.breathe
keanu.speak
skully.breathe
skully.speak

puts bella.name
puts bella.age
puts keanu.name
puts keanu.age
puts skully.name
puts skully.age