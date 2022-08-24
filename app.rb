require_relative 'person'
require_relative 'agegame'

class App 
  attr_accessor :person 

  def initialize
    @person = create_person
  end

  def create_person
    puts 'Enter your name:'
    name = gets.strip
    puts 'Enter your age:'
    age = gets.strip.to_i
    if old_enough(age)
      @person = Person.new(name, age)
      main_menu
    else
      puts "Looks like you are too young, come back when you are older"
      exit
    end
  end

  def old_enough(age)
    if age >= 18
      true 
    else 
      false
    end
  end

  def main_menu
    puts "1. To Play Age game"
    puts "2. To Exit"
    menu_choice = gets.strip.to_i

    if menu_choice == 1
      #play the game
      puts "Welcome to the age game" 
      Agegame.new(@person)
      main_menu
    elsif menu_choice == 2
      puts "Good bye"
      exit
    else 
      puts "Error need to do 1, or 2"
      main_menu
    end
  end
end

app = App.new