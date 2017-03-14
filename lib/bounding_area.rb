class BoundingArea
  attr_accessor :boxes_area
  def initialize (boxes_area)
    @boxes_area = boxes_area
  end

  def boxes_contain_point?(x, y)
      counter = 0
      boxes_area.each do |box|
        if box.contains_point?(x, y)
          counter += 1
          return true
        end
      end

      if counter == 0
        return false
      end
  end
end


# @array.any{ |box| box.contains_point?(x, y) }
