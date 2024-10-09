# Knights Travails

## Project Overview

**Knights Travails** is a Ruby implementation of the shortest-path problem for a knight on a chessboard. Given a starting position and an ending position, the program calculates the shortest possible sequence of moves for the knight to reach its target, following the movement rules of chess.

This project demonstrates the use of **breadth-first search (BFS)**, a graph traversal algorithm, to find the optimal solution to the problem. The chessboard is treated as a graph where each position is a node, and possible knight moves represent the edges between nodes.

## Features

- **Validation of Positions**: Both start and end positions are validated to ensure they are within the bounds of an 8x8 chessboard (0-7 for both x and y coordinates).
- **Optimal Path Calculation**: The program uses BFS to ensure that the path found is the shortest (i.e., requires the fewest moves).
- **Dynamic Path Display**: The program outputs the sequence of moves taken by the knight to reach the target.

## Class Overview

### `KnightsTravails`

This class is responsible for managing the game and calculating the shortest path for the knight.

#### Public Methods

- `knight_moves`: This method finds the shortest path from the knight's starting position to the end position and displays the result.

#### Private Methods

- `validate_positions`: Ensures that both the start and end positions are within the valid range of the chessboard.
- `possible_moves`: Given a knight's current position, this method calculates all valid moves the knight can make, ensuring none go off the board.

## How to Run the Program

1. Clone the repository and navigate to the project directory.
2. Run the program using Ruby:

```bash
ruby main.rb
```

3. You can modify the starting and ending positions directly in the `main.rb` file:

```ruby
game = KnightsTravails.new([0, 0], [3, 3])
game.knight_moves
```

## Example Output

```bash
Start position: [0, 0], End position: [3, 3]
You made it in 2 moves! Here's your path:
[0, 0]
[1, 2]
[3, 3]
```
