class Grid
  def self.saddle_points(section)
    transpose = section.transpose
    section.each_with_object([]).with_index do |(row, coordinates), row_index|
      row.each_with_index do |tree, column_index|
        coordinates << { 'row' => (row_index + 1), 'column' => (column_index + 1) } if is_a_good_tree?(transpose:, row:, column_index:, tree:)
      end
    end
  end

  private

  def self.is_a_good_tree?(transpose:, row:, column_index:, tree:)
    is_taller_than_every_tree_to_the_east_and_west?(row:, tree:) &&
      is_shorter_than_every_tree_to_the_north_and_south(transpose:, column_index:, tree:)
  end

  def self.is_taller_than_every_tree_to_the_east_and_west?(row:, tree:)
    tree == row.max
  end

  def self.is_shorter_than_every_tree_to_the_north_and_south(transpose:, column_index:, tree:)
    tree == transpose[column_index].min
  end
end
