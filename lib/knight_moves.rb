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
