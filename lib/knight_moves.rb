# frozen_string_literal: true

class KnightsTravails
  attr_reader :start_position, :end_position

  def initialize(start_position, end_position)
    @start_position = start_position
    @end_position = end_position
  end

  def knight_moves
    validate_positions

    # Queue holds [current_position, path]
    queue = [[start_position, [start_position]]]
    visited = []

    until queue.empty?
      current_position, path = queue.shift

      # If the current position is the end position, return the path
      if current_position == end_position
        puts "You made it in #{path.length - 1} moves! Here's your path:"
        path.each { |element| p element }
        return path
      end

      # Add the current position to the visited list
      visited << current_position

      # Add possible moves to the queue if not already visited
      possible_moves(current_position).each do |move|
        queue << [move, path + [move]] unless visited.include?(move)
      end
    end
  end

  private

  def validate_positions
    raise 'Invalid start position. Please enter values between 0 and 7.' unless valid_position?(start_position)

    raise 'Invalid end position. Please enter values between 0 and 7.' unless valid_position?(end_position)

    puts "Start position: #{start_position}, End position: #{end_position}"
  end

  def valid_position?(position)
    position[0].between?(0, 7) && position[1].between?(0, 7)
  end

  def possible_moves(position)
    start_position_x, start_position_y = position
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
end
