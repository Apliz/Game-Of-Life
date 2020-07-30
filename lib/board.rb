class Board

  attr_reader :check_edge, :ruleset

  def initialize()
  end

  def check_edge(x, y)
    true if (y < 1 || y > 6) || (x < 1 || x > 6 )
  end

  def ruleset(x, y, grid, neighbours)
    neighbours == 3 || (grid[y][x] == 1 && neighbours == 2) ? true : false
  end



end