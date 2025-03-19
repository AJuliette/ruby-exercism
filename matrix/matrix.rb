class Matrix
  def initialize(matrix_string)
    @matrix_string = matrix_string
  end

  def row(n)
    @matrix_string.lines.map(&:chomp)[n-1].split(' ').map(&:to_i)
  end

  def column(n)
    @matrix_string.lines.map{ |line| line.chomp.split(' ')[n-1] }.map(&:to_i)
  end
end
