class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons_ids)
    wagons_ids
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    first_wagon, second_wagon, locomotive, *rest_of_the_wagons = each_wagons_id
    list_of_wagons = locomotive, *missing_wagons, *rest_of_the_wagons, first_wagon, second_wagon
    list_of_wagons
  end

  def self.add_missing_stops(routing, **stops)
    { **routing, "stops": stops.values }
  end

  def self.extend_route_information(route, more_route_information)
    { **route, **more_route_information }
  end
end
