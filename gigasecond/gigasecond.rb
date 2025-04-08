class Gigasecond
  ONE_GIGASECOND_IN_SECONDS = 1_000_000_000

  def self.from(time)
    time + ONE_GIGASECOND_IN_SECONDS
  end
end
