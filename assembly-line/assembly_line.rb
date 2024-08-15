class AssemblyLine
  CARS_PRODUCED_EACH_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    cars_produced_per_speed = CARS_PRODUCED_EACH_HOUR * @speed
    case @speed
    when (1..4)
      cars_produced_per_speed
    when (5..8)
      cars_produced_per_speed * 0.9
    when 9
      cars_produced_per_speed * 0.8
    when 10
      cars_produced_per_speed * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
