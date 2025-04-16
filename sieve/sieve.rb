class Sieve
  def initialize(given_number)
    @given_number = given_number
  end

  def primes
    return [] if @given_number < 2

    primes = Array.new(@given_number + 1, true)
    primes[0] = primes[1] = false
  
    (2..Math.sqrt(@given_number)).each do |num|
      if primes[num]
        (num * num).step(@given_number, num) do |multiple|
          primes[multiple] = false
        end
      end
    end
  
    primes.each_index.select { |index| primes[index] }
  end
end
