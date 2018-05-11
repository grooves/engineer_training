require_relative 'schedule'

class Vehicle
  include Schedulable

  def lead_days
    3
  end
end

class Mechanic
  include Schedulable

  def lead_days
    4
  end
end

require 'date'

starting = Date.parse("2015/09/04")
ending   = Date.parse("2015/09/10")

v = Vehicle.new
v.schedulable?(starting, ending)

m = Mechanic.new
m.schedulable?(starting, ending)
