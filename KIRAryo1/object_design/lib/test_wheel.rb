require          'minitest/autorun'
require_relative 'gear_wheel_for_test'

class WheelTest < MiniTest::Test

  def test_calculates_diameter
    wheel = Wheel.new(26, 1.5)

    assert_in_delta(29, wheel.diameter, 0.01)
  end
end

# 'Diameterizable' ロールの担い手を作る
class DiameterDouble
  def diameter
    10
  end
end


class GearTest < MiniTest::Test

  def test_calculates_gear_inches
    gear = Gear.new(
      chainring: 52,
      cog:       11,
      wheel:     DiameterDouble.new)
      # wheel: Wheel.new(26, 1.5))

    assert_in_delta(47.27, gear.gear_inches, 0.01)
  end
end
