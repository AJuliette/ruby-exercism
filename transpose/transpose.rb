class Transpose
  def self.transpose(input)
    rows = build_rows(input)
    columns = build_columns(rows)
    columns.join("\n")
  end

  private

  def self.build_rows(input)
    input.split(/\n/).map { |string| string.chars }
  end

  def self.build_columns(rows)
    padded_rows = pad_rows(rows)
    columns = padded_rows.transpose
    trimmed_columns = trim_columns(columns)
    pad_columns(trimmed_columns)
  end

  def self.pad_rows(rows)
    rows.each_with_index.map { |row, index| rows[index] += [' '] * (max_length(rows) - rows[index].size) }
  end

  def self.trim_columns(columns)
    columns.map.with_index do |column, index|
      column.join.rstrip
    end
  end

  def self.pad_columns(columns)
    columns.each_with_index do |column, index| 
      (max_length(columns[index..-1]) - column.length).times { column << ' ' }
    end
  end

  def self.max_length(arrays)
    arrays.max_by(&:length).length
  end
end
