require_relative 'board.rb'
require_relative 'pattern.rb'
require_relative 'cell.rb'

class Game

  attr_reader :current, :condition

  def initialize(board = Board.new, pattern = Pattern.new, cell = Cell.new)
    @board = board
    @cell = cell
    @pattern = pattern
    @neighbours = 0
    @current = []
    @successor = [
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0]
    ] 
  end

  def condition(option)
    case option
    when 'loaf'
      @current = @pattern.loaf()
    when 'toad'
      @current = @pattern.toad()
    when 'test'
      @current = @pattern.test()
    end
  end

  def iterate(grid = @current)
    grid.each_with_index { |row, y|
      row.each_with_index { |cell, x|
        next if @board.check_edge(x, y, grid)
        @neighbours = @cell.count_neighbours(x, y, grid)
        @board.ruleset(x, y, grid, @neighbours) ? @successor[y][x] = 1 : @successor[y][x] = 0
        @neighbours = 0
      }
    } 
    grid = @successor
  end

  def start(n)
    n.times{
      iterate()
      puts @current
    }
  end
end 

# game now has to be able to iterate through a given number of generations (period [p])
# needs tests written and tdd approach.

# After iteration, check results in irb and then port over to a visual command line interface.
# possible gems
# gem colorize
# gem tty-prompt
# gem terminal-table

# more research needed into available gems to create a beautiful command line app. 

[[0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 0, 0, 0, 0],
[0, 0, 0, 0, 1, 0, 0, 0],
[0, 0, 1, 0, 0, 1, 0, 0], 
[0, 0, 1, 0, 0, 1, 0, 0], 
[0, 0, 0, 1, 0, 0, 0, 0], 
[0, 0, 0, 0, 0, 0, 0, 0], 
[0, 0, 0, 0, 0, 0, 0, 0]]