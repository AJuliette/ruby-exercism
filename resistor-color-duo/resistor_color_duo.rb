class ResistorColorDuo
  BAND_COLORS_ENCODING = {
    black: 0,
    brown: 1,
    red: 2,
    orange: 3,
    yellow: 4,
    green: 5,
    blue: 6,
    violet: 7,
    grey: 8,
    white: 9
  }

  def self.value(bands)
    bands.first(2).map { |band, i| BAND_COLORS_ENCODING[band.to_sym] }.join.to_i
  end
end
