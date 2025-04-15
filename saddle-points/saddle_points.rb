class Grid
  def self.saddle_points(section)
    section.each_with_object([]).with_index do |(row, array), row_index|
      row.each_with_index do |tree, column_index|
        array << { 'row' => (row_index + 1), 'column' => (column_index + 1) } if is_a_good_tree?(section:, row:, column: column_index, tree:)
      end
    end
  end

  private

  def self.is_a_good_tree?(section:, row:, column:, tree:)
    is_taller_than_every_tree_to_the_east_and_west?(row:, tree:) &&
      is_shorter_than_every_tree_to_the_north_and_south(section:, column:, tree:)
  end

  def self.is_taller_than_every_tree_to_the_east_and_west?(row:, tree:)
    row.none? { |other_tree| other_tree > tree }
  end

  def self.is_shorter_than_every_tree_to_the_north_and_south(section:, column:, tree:)
    section.none? { |row| row[column] < tree }
  end
end
