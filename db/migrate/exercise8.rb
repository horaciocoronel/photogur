
# ======== FIRST OPTION ======

# Define a method to get distance
# def person_distance(person)
#   puts "How far did person #{person} run (in metres)?"
#   distance = gets.to_f
# end
#
# # Define a method to get time
# def person_time(person, distance)
#   puts "How long (in minutes) did person #{person} run take to run #{distance} metres?"
#   time = gets.to_f
# end
#
# # Define method to calculate distance per second
# def speed(distance,time)
#   time = (time * 60.0).to_i
#   (distance / time).round(2)
# end
#
# # Call the methods for each perand put them inside variables
# person1_d = person_distance(1)
# person1_t = person_time(1, person1_d)
#
# person2_d = person_distance(2)
# person2_t = person_time(2, person2_d)
#
# person3_d = person_distance(3)
# person3_t = person_time(3, person3_t)
#
# # Put speed per person into variables
# speed1 = speed(person1_d, person1_t)
# speed2 = speed(person2_d, person2_t)
# speed3 = speed(person3_d, person3_t)
#
# # Logic to determine who is the fastest runner
# if speed3 > speed2 && speed3 > speed1
#   puts "Person 3 was the fastest at #{speed3} m/s"
# elsif speed2 > speed3 && speed2 > speed1
#   puts "Person 2 was the fastest at #{speed2} m/s"
# elsif speed1 > speed3 && speed1 > speed2
#   puts "Person 1 was the fastest at #{speed1} m/s"
# elsif speed1 == speed2 && speed2 == speed3
#   puts "Everyone tied at #{speed1} m/s"
# else
#   puts "Well done everyone!"
# end
#

# ========= Alternative otion =============

def get_input(person_number)
  puts "How far did person #{person_number} run (in metres)?"
  distance = gets.to_f
  puts "How long (in minutes) did person #{person_number} run take to run #{distance} metres?"
  mins = gets.to_f
  secs = (mins * 60)
  return distance / secs
end

def display_fastest_player(speed, person_number)
  puts "Person #{person_number} was the fastest at #{speed} meters/second"
end

def player_fastest?(player_speed, opponent_a_speed, opponent_b_speed)
  player_speed > opponent_a_speed && player_speed > opponent_b_speed
end


def player_3_fastest?(speed1, speed2, speed3)
  if speed3 > speed2 && speed3 > speed1
  end
end

def player_2_fastest?(speed1, speed2, speed3)
  if speed2 > speed3 && speed2 > speed1
  end
end

def player_1_fastest?(speed1, speed2, speed3)
  if speed1 > speed3 && speed1 > speed2
  end
end

speed1 = get_input(1)
speed2 = get_input(2)
speed3 = get_input(3)

if player_3_fastest?(speed1, speed2, speed3)
  display_fastest_player(speed3, 3)
elsif player_3_fastest?(speed1, speed2, speed3)
  display_fastest_player(speed2, 2)
elsif player_3_fastest?(speed1, speed2, speed3)
  display_fastest_player(speed1, 1)
end
