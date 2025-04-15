class PythagoreanTriplet
  def self.triplets_with_sum(sum)
    triplets = []
    (1..sum / 3).each do |a|
      ((a+1)..sum / 2).each do |b|
        c = sum - a - b
        triplets.push([a, b, c]) if a < b && b < c && (a**2 + b**2) == c**2
      end
    end
    triplets
  end
end
