class Game

  attr_reader :grid, :condition

  def initialize
    @neighbors = 0
    @current = [
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0]
    ]

    @successor = [
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0], 
      [0, 0, 0, 0, 0, 0]
    ]
   
  end

  def condition(choice)
    case choice
      when 'loaf'
        @current = [
        [0, 0, 0, 0, 0, 0], 
        [0, 0, 1, 1, 0, 0], 
        [0, 1, 0, 0, 1, 0], 
        [0, 0, 1, 0, 1, 0], 
        [0, 0, 0, 1, 0, 0], 
        [0, 0, 0, 0, 0, 0]
      ]
    
      when 'toad'
        @current = [
        [0, 0, 0, 0, 0, 0], 
        [0, 0, 0, 0, 0, 0], 
        [0, 0, 1, 1, 1, 0], 
        [0, 1, 1, 1, 0, 0], 
        [0, 0, 0, 0, 0, 0], 
        [0, 0, 0, 0, 0, 0]
      ]
        
    end
  end

  def count_neighbours(grid)
    neighbours = 0
    successor = [
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0]
    ]
    grid.each_with_index { |row, y|
      row.each_with_index { |cell, x|

        # so it wont check edges and return nil
        if (y < 1 || y > 4) || (x < 1 || x > 4 )
          next
        end

        # ruleset for neighbour check
        [[(grid[y - 1][x - 1])],
        [(grid[y - 1][x])],
        [(grid[y - 1][x + 1])],
        [(grid[y][x - 1])],
        [(grid[y][x + 1])],
        [(grid[y + 1][x - 1])],
        [(grid[y + 1][x])],
        [(grid[y + 1][x + 1])]
        ].each { |rule| 
          p rule
          #if neighbour exists, add one to total count
          if rule == [1] 
            neighbours += 1
          end
        }
        # if there are 3 neighbours, or 2 adjacent to a live cell, create/ keep alive
        if neighbours == 3 || (grid[y][x] == 1 && neighbours == 2)
          successor[y][x] = 1
          neighbours = 0
        else
          # else  destroy/ keep dead (possible optimisation)
          successor[y][x] = 0
          neighbours = 0
        end

      }
    }
    p successor
  end

end 

game = Game.new
game.condition('loaf')
game.state_check 