class PythagoreanTriplet
  def self.triplets_with_sum(sum)
    triplets = []
    (1..sum / 3).each do |a|
      b = (sum**2 - 2 * sum * a) / (2 * sum - 2 * a)
      c = sum - a - b
      triplets.push([a, b, c].sort) if (a**2 + b**2) == c**2
    end
    triplets.uniq
  end
end
