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

  # Queue holds [current_position, path]
  queue = [[start_position, [start_position]]]
  visited = []

  until queue.empty?
    current_position, path = queue.shift

    # If the current position is the end position, return the path
    if current_position == end_position
      puts "You made it in #{path.length - 1} moves! Here's your path:"
      path.each { |element| p element }
      return
    end

    # Add the current position to the visited list
    visited << current_position

    # Add possible moves to the queue if not already visited
    possible_moves(current_position[0], current_position[1]).each do |move|
      queue << [move, path + [move]] unless visited.include?(move)
    end
  end
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

  # Return moves only within the 8x8 board
  [move1, move2, move3, move4, move5, move6, move7, move8].select do |(x, y)|
    x.between?(0, 7) && y.between?(0, 7)
  end
end
