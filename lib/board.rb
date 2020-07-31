class Board

  attr_reader :check_edge, :ruleset

  def initialize()
  end

  def check_edge(x, y, grid)
    true if (y < 1 || y > grid.length - 2) || (x < 1 || x > grid.length - 2 )
  end

  def ruleset(x, y, grid, neighbours)
    neighbours == 3 || (grid[y][x] == 1 && neighbours == 2) ? true : false
  end
end