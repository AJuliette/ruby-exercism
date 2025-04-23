class SpiralMatrix
  def initialize(size)
    @size = size
    @matrix = create_square_matrix
    
  end

  def matrix
    generate_spiral
    @matrix
  end

  private

  def create_square_matrix
    Array.new(@size) { Array.new(@size, nil) }
  end

  def generate_spiral
    top = 0
    bottom = @size - 1
    left = 0
    right = @size - 1
    num = 1

    while top <= bottom && left <= right
      # Fill top row
      (left..right).each do |i|
        @matrix[top][i] = num
        num += 1
      end
      top += 1

      # Fill right column
      (top..bottom).each do |i|
        @matrix[i][right] = num
        num += 1
      end
      right -= 1

      # Fill bottom row
      if top <= bottom
        (right).downto(left).each do |i|
          @matrix[bottom][i] = num
          num += 1
        end
        bottom -= 1
      end

      # Fill left column
      if left <= right
        (bottom).downto(top).each do |i|
          @matrix[i][left] = num
          num += 1
        end
        left += 1
      end
    end
  end
end
