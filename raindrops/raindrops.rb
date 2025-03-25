class Raindrops
  def self.convert(number)
    conversion = ''
    conversion += "Pling" if number % 3 == 0
    conversion += "Plang" if number % 5 == 0
    conversion += "Plong" if number % 7 == 0
    conversion.empty? ? number.to_s : conversion 
  end
end
