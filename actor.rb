# frozen_string_literal: true

# The base class for all entity's
class Actor
  attr_accessor :x, :y, :hp
  attr_reader :sprite, :name

  def initialize(xpos, ypos, name, sprite, hitpoints, atk=1, defence=1)
    @x = xpos
    @y = ypos
    @sprite = sprite
    @hp = hitpoints
    @attack = atk
    @defence = defence
    @name = name
    @helm = nil
    @armor = nil
    @weapon = nil
  end

  def move(direction)
    @x += direction[0]
    @y += direction[1]
  end

  def take_dmg(amount)
    @hp -= (amount - @defence)
  end

  def dmg
    @attack
  end
end

