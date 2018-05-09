class Bicycle
  attr_reader :size, :tape_color

  def initialize(args)
    @size       = args[:size]
    @tape_color = args[:tape_color]
  end

  # All bicycles have the same tire size and chain size as defaultvalue
  def spares
    { chain:      '10-speed',
      tire_size:  '23',
      tape_color: tape_color}
  end

  # And some other methods...
end

puts bike = Bicycle.new(
        size:       'M',
        tape_color: 'red')

puts bike.size
puts bike.spares
