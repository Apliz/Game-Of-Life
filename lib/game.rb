require_relative 'board.rb'

class Game

  attr_reader :current, :condition

  def initialize(board = Board.new)
    @board = board
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

  def condition(pattern)
    case pattern
    when 'loaf'
      @current = [
        [0, 0, 0, 0, 0, 0, 0, 0], 
        [0, 0, 0, 0, 1, 1, 0, 0], 
        [0, 0, 0, 1, 0, 0, 1, 0], 
        [0, 0, 0, 0, 1, 0, 1, 0], 
        [0, 0, 0, 0, 0, 1, 0, 0], 
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0]
      ]
    when 'toad'
      @current = [
        [0, 0, 0, 0, 0, 0, 0, 0], 
        [0, 0, 0, 0, 1, 1, 0, 0], 
        [0, 0, 0, 1, 0, 0, 1, 0], 
        [0, 0, 0, 0, 1, 0, 1, 0], 
        [0, 0, 0, 0, 0, 1, 0, 0], 
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0]
      ]
    when 'test'
      @current = [
        [0, 1, 1, 0, 1, 1, 1, 0], 
        [0, 0, 0, 1, 0, 1, 0, 0], 
        [0, 1, 0, 1, 1, 0, 1, 0], 
        [0, 0, 0, 0, 0, 1, 1, 0], 
        [0, 0, 0, 0, 0, 0, 1, 0], 
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0]
      ] 
    end
  end

  def count_neighbours(x, y, grid = @current)
    [ [grid[y - 1][x - 1]],
      [grid[y - 1][x]],
      [grid[y - 1][x + 1]],
      [grid[y][x - 1]],
      [grid[y][x + 1]],
      [grid[y + 1][x - 1]],
      [grid[y + 1][x]],
      [grid[y + 1][x + 1]]
    ].each { |rule| @neighbours += 1 if rule == [1] }
  end

  def start(grid = @current)
    grid.each_with_index { |row, y|
      row.each_with_index { |cell, x|
        next if @board.check_edge(x, y) == true
        count_neighbours(x, y)
        @board.ruleset(x, y, grid, @neighbours) ? @successor[y][x] = 1 : @successor[y][x] = 0
        @neighbours = 0
      }
    }  
    @successor                                                                                                         
  end
end 