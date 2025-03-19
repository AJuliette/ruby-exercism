class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons_ids)
    wagons_ids
  end

  def self.fix_list_of_wagons(wagons_ids, added_wagons)
    wagon_1, wagon_2, locomotive, *remaining_wagons = wagons_ids
    [locomotive, *added_wagons, *remaining_wagons, wagon_1, wagon_2]
  end

  def self.add_missing_stops(journey, **missing_stops)
    { **journey, stops: missing_stops.values }
  end

  def self.extend_route_information(journey, routing_information)
    { **journey, **routing_information }
  end
end
