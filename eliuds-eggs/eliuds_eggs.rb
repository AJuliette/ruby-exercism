class EliudsEggs

  def self.egg_count(binary_number)
    binary_string = binary_number.to_s(2)
    eggs = []
    binary_string.each_char do |char|
      eggs << char if char == "1"
    end
    eggs.count
  end
end
