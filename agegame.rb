class Agegame 
  attr_accessor :person 

  def initialize(person)
    @person = person
    game
  end

  def game 
    puts "if you guess right you get younger"
    puts "if you guess wrong you get older"
    game_logic
  end

  def game_logic
    guess_arr = [1,2,3,4,5,6,7,8,9,10]
    # guess_arr = (1..10)
    puts "What is your guess from 1-10"
    user_guess = gets.strip.to_i
    
    if user_guess > 0 && user_guess < 11
      rand_num = guess_arr.sample
      if user_guess == rand_num
        @person.increase_age(-1)
        puts "You guess correctly"
      else 
        @person.increase_age(rand_num)
        puts "The correct answer is #{rand_num}"
        puts "You guess wrong"
      end
      puts "Now the age is #{@person.age}"
    else
      puts "You are out of range"
      game_logic
    end
  end
end