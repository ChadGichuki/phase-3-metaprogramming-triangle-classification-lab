class Triangle
  attr_accessor :x, :y, :z
  def initialize(x,y,z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if self.x <=0 || self.y <=0 || self.z <=0
      raise TriangleError
    elsif self.x >= (self.y + self.z) || self.y >= (self.x + self.z) || self.z >= (self.x + self.y)
      raise TriangleError
    elsif self.x == self.y && self.x == self.z
      return :equilateral
    elsif self.x == self.y || self.x == self.z || self.y == self.z
      return :isosceles
    else
      return :scalene
    end

    
  end

  class TriangleError < StandardError
    def message
      puts "Inalid Triangle"
    end
  end
end
