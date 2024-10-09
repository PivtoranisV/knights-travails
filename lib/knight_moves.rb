# frozen_string_literal: true

def knight_moves(start_position, end_position)
  unless start_position[0].between?(0, 7) && start_position[1].between?(0, 7)
    puts 'Invalid start position. Please enter values between 0 and 7.'
    return
  end

  unless end_position[0].between?(0, 7) && end_position[1].between?(0, 7)
    puts 'Invalid end position. Please enter values between 0 and 7.'
    return
  end

  puts "Start position: #{start_position}, End position: #{end_position}"
end

def possible_moves(start_position_x, start_position_y)
  move1 = [start_position_x + 2, start_position_y + 1]
  move2 = [start_position_x + 2, start_position_y - 1]
  move3 = [start_position_x - 2, start_position_y + 1]
  move4 = [start_position_x - 2, start_position_y - 1]
  move5 = [start_position_x + 1, start_position_y + 2]
  move6 = [start_position_x + 1, start_position_y - 2]
  move7 = [start_position_x - 1, start_position_y + 2]
  move8 = [start_position_x - 1, start_position_y - 2]
  [move1, move2, move3, move4, move5, move6, move7, move8]
end
