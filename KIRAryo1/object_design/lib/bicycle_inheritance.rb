class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size       = args[:size]
    @chain      = args[:chain]     || default_chain
    @tire_size  = args[:tire_size] || default_tire_size
    post_initialize(args)
  end

  def spares
    { tire_size: tire_size,
      chain:     chain}.merge(local_spares)
  end

  def default_tire_size
    raise NotImplementedError
  end

  def post_initialize(args)
    nil
  end

  def local_spares
    {}
  end

  def default_chain
    '10-speed'
  end

  # def default_tire_size
  #   '23'
  # end
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
  attr_reader :rear_shock, :front_shock

  def pots_initialize(args)
    @rear_shock  = args[:rear_shock]
    @front_shock = args[:front_shock]
  end

  def local_spares
    {rear_shock: rear_shock,
     front_shock: false}
  end

  def default_tire_size
    '2.1'
  end
end
