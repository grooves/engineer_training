class Bicycle
  require_relative 'schedule'
  attr_reader :schedule, :size, :chain, :tire_size

  # add in Shedule to config initial value
  def initialize(args={})
    @schedule   = args[:schedule]  || Schedule.new
    @size       = args[:size]
    @chain      = args[:chain]     || default_chain
    @tire_size  = args[:tire_size] || default_tire_size

    post_initialize(args)
  end

  def post_initialize(args)
    nil
  end

  def spares
    { tire_size: tire_size,
      chain:     chain}.merge(local_spares)
  end

  # hook method for subclass to override
  def local_spares
    {}
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    '23'
  end
end

class RoadBike < Bicycle
  attr_reader :tape_color

  def post_initialize(args)
    @tape_color = args[:tape_color]
  end

  def local_spares
    {tape_color: tape_color}
  end

  def default_tire_size
    '23'
  end
end

class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def post_initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock  = args[:rear_shock]
  end

  def local_spares
    {rear_shock: rear_shock}
  end

  def default_tire_size
    '2.1'
  end
end

class RecumbentBike < Bicycle
  attr_reader :flag

  def post_initialize(args)
    @flag = args[:flag]
  end

  def local_spares
    {flag: flag}
  end

  def default_chain
    '9-speed'
  end

  def default_tire_size
    '28'
  end
end

require 'date'
starting = Date.parse("2015/09/04")
ending   = Date.parse("2015/09/10")

b = Bicycle.new
puts b.schedulable?(starting, ending)


# bent = RecumbentBike.new(flag: 'tall and orange')
# puts bent.spares
#
# road_bike = RoadBike.new(
#   size: 'M', tape_color: 'red')
# puts road_bike.spares
#
# mountain_bike = MountainBike.new(
#   size: 'S', front_shock: 'Manitou', rear_shock: 'Fox')
#
# puts mountain_bike.spares

# puts bike = Bicycle.new(
#         size:       'M',
#         tape_color: 'red')
#
# puts bike.size
# puts bike.spares
