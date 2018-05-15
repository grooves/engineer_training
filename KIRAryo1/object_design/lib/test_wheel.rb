require          'minitest/autorun'
require_relative 'gear_wheel_for_test'

class WheelTest < MiniTest::Test
  def setup
    @wheel = Wheel.new(rim:  26,
                       tire: 1.5)
  end

  def test_implements_the_diameterizable_interface
    assert_respond_to(@wheel, :diameter)
  end

  def test_calculates_diameter
    assert_in_delta(29, @wheel.diameter, 0.01)
  end
end

# 'Diameterizable' ロールの担い手を作る
class DiameterDouble
  def diameter
    10
  end
end


class GearTest < MiniTest::Test

  def setup
    @observer = MiniTest::Mock.new
    @gear     = Gear.new(
                  chainring: 52,
                  cog:       11,
                  observer:  @observer)
  end

  def test_notifies_observers_when_cogs_change
    @observer.expect(:changed, true, [52,27])
    @gear.set_cog(27)
    @observer.verify
  end

  def test_notifies_observers_when_chainrings_change
    @observer.expect(:changed, true, [42, 11])
    @gear.set_chainring(42)
    @observer.verify
  end
  # def test_calculates_gear_inches
  #   gear = Gear.new(
  #     chainring: 52,
  #     cog:       11,
  #     wheel:     DiameterDouble.new)
  #     # wheel: Wheel.new(26, 1.5))
  #
  #   assert_in_delta(47.27, gear.gear_inches, 0.01)
  # end
end
