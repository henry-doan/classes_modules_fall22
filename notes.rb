@cars = [
  { id: 1, make: 'Ford', model: 'Fusion', year: 2000 },
  { id: 2, make: 'Toyata', model: 'Prius', year: 2011 },
  { id: 3, make: 'Acura', model: 'RDX', year: 2002 },
  { id: 4, make: 'Ford', model: 'Fusion', year: 2004 }
]

def display_cars
  @cars.each_with_index do |car, index|
    puts "#{index + 1} #{car[:make]} #{car[:model]} #{car[:year]}" 
  end
end

def editing_car
  display_cars
  puts "Which car do you want to edit?"
  edit_car = gets.strip.to_i

  if edit_car > 0 && edit_car <= @cars.count
    car_edit(edit_car)
  else
    puts "you need to choose one of the cars"
    editing_car
  end
end

def car_edit(edit_car)
  puts "What do you want to edit?"
  attr_edit = gets.strip.downcase

  if attr_edit == 'make'
    puts "What is the new make?"
    user_make = gets.strip
    @cars[edit_car - 1][:make] = user_make
  elsif attr_edit == 'model'
    puts "What is the new model?"
    user_model = gets.strip
    @cars[edit_car - 1][:model] = user_model
  elsif attr_edit == 'year'
    puts "What is the new year?"
    user_year = gets.strip.to_i
    @cars[edit_car - 1][:year] = user_year
  else
    car_edit(edit_car)
  end
  display_cars
end


editing_car
# can go back to the menu or continue to edit