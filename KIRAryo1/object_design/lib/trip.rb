class Trip
  attr_reader :bicycle, :customers, :vehicle

  def prepare(preparers)
    preparers.each {|preparer|
      case preparer
      when Mechanic
        preparer.prepare_bicycles(bicycles)
      when TripCoordinator
        preparer.buy_food(customres)
      when Driver
        preparer.gas_up(vehicle)
        prepare.fill_water_tank(vehicle)
      end
    }
  end
end

class TripCoordinator
  def buy_food(customers)
    # ...
  end
end

class Driver
  def gas_up(vehicle)
    # ...
  end

  def fill_water_tank(vehicle)
    # ...
  end
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| preare_bicycyle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    # ...
  end
end
