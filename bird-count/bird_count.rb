class BirdCount
  def initialize(last_week_seeings)
    @last_week_seeings = last_week_seeings
  end

  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def yesterday
    @last_week_seeings[-2]
  end

  def total
    @last_week_seeings.reduce(:+)
  end

  def busy_days
    @last_week_seeings.select{ |seeing| seeing >= 5 }.count
  end

  def day_without_birds?
    @last_week_seeings.any?{ |seeing| seeing == 0 }
  end
end
