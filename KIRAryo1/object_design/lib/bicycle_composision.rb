class Bicycle
  attr_reader :size, :parts

  def initialize(args={})
    @size       = args[:size]
    @parts      = args[:parts]
  end

  def spares
    parts.spares
  end
end

require 'forwardable'
class Parts
  extend Forwardable
  def_delegators :@parts, :size, :each
  include Enumerable
  attr_reader :parts

  def initialize(parts)
    @parts = parts
  end

  def spares
    parts.select {|part| part.needs_spare}
  end
end

class Part
  attr_reader :name, :description, :needs_spare

  def initialize(args)
    @name        = args[:name]
    @description = args[:description]
    @needs_spare = args.fetch(:needs_spare, true)
  end
  #
  # # subclass may override
  # def post_initialize(args)
  #   nil
  # end
  #
  # # hook method for subclass to override
  # def local_spares
  #   {}
  # end
  #
  # def default_chain
  #   '10-speed'
  # end
  #
  # def default_tire_size
  #   raise NotImplementedError
  # end
end

class RoadBikeParts < Parts
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

class MountainBikeParts < Parts
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

class RecumbentBikeParts < Parts
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

chain =
  Part.new(name: 'chain', description: '10-speed')

road_tire =
  Part.new(name: 'tire_size', description: '23')

tape =
  Part.new(name: 'tape_color', description: 'red')

mountain_tire =
  Part.new(name: 'tire_size', description: '2.1')

rear_shock =
  Part.new(name: 'rear_shock', description: 'Fox')

front_shock =
  Part.new(name: 'front_shock', description: 'Manitou', needs_spares: false)

road_bike_parts =
  Parts.new([chain, road_tire, tape])

road_bike =
  Bicycle.new(size: 'L', parts: road_bike_parts)

puts road_bike.size
p road_bike.spares

mountain_bike =
  Bicycle.new(size: 'XL', parts: Parts.new([chain, mountain_tire, front_shock, rear_shock]))

puts mountain_bike.size
puts mountain_bike.spares.size
puts mountain_bike.parts.size
