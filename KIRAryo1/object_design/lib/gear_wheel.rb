class Gear
  attr_reader :chainring, :cog, :wheel
  def initialize(args)
    @chainring = args[:chainring] || 40
    @cog       = args[:cog]       || 18
    @wheel     = args[:wheel]
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
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

puts Gear.new(chainring: 52, cog: 11, wheel: Wheel.new(26, 1.5)).gear_inches
puts "Initialize with hash"

# @wheel = Wheel.new(26, 1.5)
# puts @wheel.circumference
#
# puts Gear.new(52, 11).ratio
# puts Gear.new(30, 27).ratio
#
# puts Gear.new(52, 11, @wheel).gear_inches
