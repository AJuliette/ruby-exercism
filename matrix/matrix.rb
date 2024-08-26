class Matrix
  def initialize(matrix)
    @matrix = matrix
  end

  def row(number_of_row)
    @matrix.each_line.map { |line|  line.split(" ").map(&:to_i) }[number_of_row - 1]
  end

  def column (number_of_column)
    @matrix.each_line.map { |line|  line.split(" ").map(&:to_i) }.map { |line| line[number_of_column - 1] }
  end
end
