class Gear
  attr_reader :chainring, :cog, :rim, :tire
  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * Wheel.new(rim,tire).diameter
  end

end

class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim  = rim
    @tire = tire
  end

  def diameter
    rim + tire * 2
  end

  def circumference
    diameter * Math::PI
  end
end

puts Gear.new(52, 11, 26, 1.5).gear_inches

# @wheel = Wheel.new(26, 1.5)
# puts @wheel.circumference
#
# puts Gear.new(52, 11).ratio
# puts Gear.new(30, 27).ratio
#
# puts Gear.new(52, 11, @wheel).gear_inches
