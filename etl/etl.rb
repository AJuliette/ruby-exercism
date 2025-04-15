class ETL
  def self.transform(old)
    old.each_with_object({}) do |one_to_one_mapping, hash|
      point, letters = one_to_one_mapping
      letters.each do |letter|
        hash[letter.downcase] = point
      end
    end
  end
end
