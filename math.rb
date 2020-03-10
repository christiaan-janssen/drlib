# frozen_string_literal: true

# A basic point class
class Point
  attr_accessor :x, :y
  
  def initialize(x ,y)
    @x = x
    @y = y
  end

  def distance_to(p2)
    a = p2.x - @x
    b = p2.y - @y
    Math.sqrt ((a ** 2) + (b ** 2))
  end
end

# A basic rectangle class
class Rect
  attr_accessor :p1, :p2 , :r, :g, :b
  
  def initialize(x1, y1, x2, y2)
    @p1 = Point.new(x1, y1)
    @p2 = Point.new(x2, y2)
    @r = rand(255)
    @g = rand(255)
    @b = rand(255)
  end

  # does this rectangle intersect with a other
  # rectangle object?
  def intersects?(r2)
    if @p2.x <= r2.p1.x or r2.p2.x <= @p1.x 
      return false
    elsif @p2.y >= r2.p1.y or r2.p2.y >= @p1.y
    end
    return true
  end

  # Return the rectangle as a solid to output
  # in DragonRuby with a rectangle named rect:
  # args.solids.rectangles << rect.solid
  def solid
    return [@p1.x, @p1.y,
            @p2.x - @p1.x,
            @p2.y - @p1.y,
            @r, @g, @b]
  end
end

