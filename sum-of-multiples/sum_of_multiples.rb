require 'pry'

class SumOfMultiples
  def initialize(*base_value_of_magical_items)
    @base_value_of_magical_items = base_value_of_magical_items
  end

  def to(level_completed)
    @base_value_of_magical_items.flat_map do |base_value_of_magical_item|
      return 0 if base_value_of_magical_item.zero?
      range = (level_completed % base_value_of_magical_item).zero? ? (1...(level_completed/base_value_of_magical_item)) : (1..(level_completed/base_value_of_magical_item))
      range.map do |n|
        n * base_value_of_magical_item
      end
    end.uniq.sum
  end
end
