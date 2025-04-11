class Triangle
  def initialize(sides)
    @sides = sides
    @side_a, @side_b, @side_c = sides
  end

  def equilateral?
    @side_a == @side_b && @side_b == @side_c && validation
  end

  def isosceles?
    (@side_a == @side_b || @side_b == @side_c || @side_a == @side_c) && validation
  end

  def scalene?
    @side_a != @side_b && @side_b != @side_c && @side_a != @side_c && validation
  end

  private

  def validation
    side_size_is_valid? && no_zero_side?
  end

  def side_size_is_valid?
    (@side_a + @side_b >= @side_c) && (@side_b + @side_c >= @side_a) && (@side_a + @side_c >= @side_b)
  end

  def no_zero_side?
    @sides.all?(&:positive?)
  end
end
