class Clock
  attr_reader :hour, :minute

  def initialize(hour: 0,minute: 0)
    @hour = (hour + minute / 60) % 24 
    @minute = minute % 60
  end

  def +(other)
    hour = self.hour + other.hour
    minute = self.minute + other.minute
    Clock.new(hour: hour, minute: minute)
  end

  def -(other)
    hour = self.hour - other.hour
    minute = self.minute - other.minute
    Clock.new(hour: hour, minute: minute)
  end

  def ==(other)
    hour == other.hour && minute == other.minute
  end

  def to_s
    "%02d:%02d" % [hour, minute]
  end
end
