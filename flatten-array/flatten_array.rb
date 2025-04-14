class FlattenArray
  def self.flatten(array, flatten_array = [])
    array.each do |obj|
      next unless obj
      if obj.kind_of?(Array)
        flatten(obj,flatten_array)
      else
        flatten_array << obj
      end
    end

    flatten_array
  end
end
