module Math
  def add(num1, num2)
    num1 + num2
  end

  def triple(num)
    num * 3
  end

  def odd_or_even(num)
    if num % 2 == 0
      "even"
    else
      "odd"
    end 
  end

end

# if it is in a different file 
# require_relative 'path to the file'
# ../ - going out one folder 
# ./
# / - going into a folder 
# /math.rb - file name 
# /tools - folder names
# require_relative './tools/calc'

class MathHW 
  # grab all of the code from the module and put in the current location
  include Math

  def first_answer
    puts odd_or_even(triple(3))
  end
end

class MathExam 
  # grab all of the code from the module and put in the current location
  include Math

  def first_answer
    puts triple(6)
  end
end

hw = MathHW.new
hw.first_answer

mx = MathExam.new 
mx.first_answer