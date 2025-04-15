class ResistorColorTrio
  COLOR_BANDS_ENCODING = {
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

  def initialize(color_trio)
    @color_trio = color_trio
  end

  def label
    *first_two_colors, zero_count = @color_trio
    main_value = first_two_colors.map { |color| COLOR_BANDS_ENCODING[color.to_sym] }.join.to_i
    resistor_value = main_value * 10**COLOR_BANDS_ENCODING[zero_count.to_sym]
    if (resistor_value % 10**3).zero?
      resistor_value = "#{ (resistor_value / 10**3) }"
      mesure = 'kiloohms'
    else
      resistor_value = "#{ resistor_value }"
      mesure = 'ohms'
    end
    "Resistor value: #{ resistor_value } #{ mesure }"
  end
end
