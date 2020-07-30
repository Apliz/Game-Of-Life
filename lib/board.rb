class Board

  attr_reader :check_edge, :ruleset

  def initialize()

  end

  # correctly injected
  def check_edge(x, y)
    true if (y < 1 || y > 6) || (x < 1 || x > 6 )
  end

  # currently does not return valid array method (NoMethodError) 
  # I think this is because of grid = @current where @current is not defined. (research/ thknk about solution.)
  def ruleset(x, y, grid = @current)
    @neighbours == 3 || (grid[y][x] == 1 && @neighbours == 2) ? true : false
  end



end