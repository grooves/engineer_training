class Bicycle
  attr_reader :size

  def initialize(args={})
    @size       = args[:size]
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(args)
    @tape_color = args[:tape_color]
    super(args)
  end

  # All bicycles have the same tire size and chain size as defaultvalue
  def spares
    { chain:      '10-speed',
      tire_size:  '23',
      tape_color: tape_color}
  end

  # And some other methods...
end

class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock  = args[:rear_shock]
    super(args)
  end

  def spares
    super.merge(rear_shock: rear_shock)
  end
end

road_bike = RoadBike.new(
  size: 'M', tape_color: 'red')
puts road_bike.size

mountain_bike = MountainBike.new(
  size: 'S', front_shock: 'Manitou', rear_shock: 'Fox')

puts mountain_bike.size
puts mountain_bike.spares

# puts bike = Bicycle.new(
#         size:       'M',
#         tape_color: 'red')
#
# puts bike.size
# puts bike.spares
