class Gear
  attr_reader :chainring, :cog
  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches(diameter)
    ratio * diameter
  end
end

class Wheel
  attr_reader :rim, :tire, :gear

  def initialize(rim, tire, chainring, cog)
    @rim  = rim
    @tire = tire
    @gear = Gear.new(chainring, cog)
  end

  def diameter
    rim + tire * 2
  end

  def gear_inches
    gear.gear_inches(diameter)
  end

  def circumference
    diameter * Math::PI
  end
end

puts Wheel.new(26, 1.5, 52, 11).gear_inches
puts 'Inverse dependency'

# @wheel = Wheel.new(26, 1.5)
# puts @wheel.circumference
#
# puts Gear.new(52, 11).ratio
# puts Gear.new(30, 27).ratio
#
# puts Gear.new(52, 11, @wheel).gear_inches

[[1, 2, 3], [2, 3, 4]].map { |ary| ary.select(&:odd?) }.flatten
