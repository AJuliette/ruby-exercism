class Transpose
  def self.transpose(input)
    rows = input.split("\n")
    columns = rows.map do |row|
      transpose_row_in_column(row)
    end
    join_columns(columns)
  end

  def self.transpose_row_in_column(row)
    columns = {}
    row.chars.each_with_index do |letter, index|
      columns[index] ||= ''
      columns[index] += letter
    end
    rows = []
    columns.map do |column|
      index, string = column
      rows[index] ||= ''
      rows[index] += string
    end
    rows.join("\n")
  end

  def self.join_columns(columns)
    rows = {}
    columns.map do |column|
      column.split("\n").each_with_index do |letter, index|
        rows[index] ||= ''
        rows[index] += letter
      end
    end
    rows.values.join("\n")
  end
end
