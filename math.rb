# frozen_string_literal: true

class Point
  attr_accessor :x, :y
  
  def initialize(x ,y)
    @x = x
    @y = y
  end

  def distance_to(other)
    raise NotImplementedError
  end
end

class Rect
  attr_accessor :p1, :p2 , :r, :g, :b
  def initialize(x1, y1, x2, y2)
    @p1 = Point.new(x1, y1)
    @p2 = Point.new(x2, y2)
    @r = rand(255)
    @g = rand(255)
    @b = rand(255)
  end

  def intersects?(other)
    if @p1.x > other.p2.x or p2.x > other.p1.x
      false
    end

    if p1.y < other.p2.y or p2.y < other.p1.y
      false
    end
  
    return true
  end
end

