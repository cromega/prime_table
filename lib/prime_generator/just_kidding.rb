module PrimeGenerator
  class JustKidding
    PRIMES = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

    class Error; end

    def first(count)
      raise Error, 'Not enough primes!' if count > PRIMES.count
      PRIMES.take(count)
    end
  end
end


