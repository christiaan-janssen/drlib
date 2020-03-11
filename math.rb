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

  # Original code by skryking
  def points_on_a_line(x0, y0, x1, y1)
    raise NotImplementedError
    dx = (x1 - x0).abs
    dy = -(y1 - y0).abs
    step_x = x0 < x1 ? 1 : -1
    step_y = y0 < y1 ? 1 : -1
    err = dx + dy
    coords = Array.new
    coords << [x0, y0]
    (
      begin
        e2 = 2 * err

        if e2 >= dy
          err += dy
          x0 += step_x
        end

        if e2 <= dx
          err += dx
          y0 += step_y
        end

        coords << [x0, y0]
      end

    ) until (x0 == x1 && y0 == y1)
    coords
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

