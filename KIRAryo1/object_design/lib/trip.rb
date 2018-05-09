class Trip
  attr_reader :bicycle, :customers, :vehicle

  def prepare(preparers)
    preparers.each {|preparer|
      preparer.prepare_trip(self) }
  end
end

# All (Preparer)s are duck which responses 'prepare_trip'
class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(customers)
    # ...
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end

  def gas_up(vehicle)
    # ...
  end

  def fill_water_tank(vehicle)
    # ...
  end
end

class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each { |bicycle|
      prepare_bicycle(bicycle)}
  end

  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| preare_bicycyle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    # ...
  end
end
