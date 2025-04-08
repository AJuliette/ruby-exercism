class ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white]

  def self.color_code(color)
    COLORS.each_with_index do |resistor_color, index|
      return index if color == resistor_color
    end
  end
end
