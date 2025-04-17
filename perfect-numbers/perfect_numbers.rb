class PerfectNumber
  def self.classify(number)
    raise RuntimeError if number < 0
    case aliquot_sum(number)
    when -> (n) { number == n } then 'perfect'
    when -> (n) { number < n } then 'abundant'
    when -> (n) { number > n } then 'deficient'
    end
  end  

  private

  def self.aliquot_sum(number)
    (1..(number/2)).reduce do |sum, n|
      (number % n).zero? ? (sum + n) : sum
    end
  end
end
