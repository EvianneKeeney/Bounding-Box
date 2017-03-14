class BoundingBox
  attr_accessor :x, :y, :width, :height
  def initialize (x, y, width, height)
    @x = x
    @y = y
    @width = width
    @height = height
  end

  def left
    @x
  end

  def right
    @x + @width
  end

  def top
    @y + height
  end

  def bottom
    @y
  end

  def contains_point?(x, y)
    if x <= right && x >= left && y <= top && y >= bottom
      return true
    else
      return false
    end
  end

end
