module PrimeGenerator
  class Sieve
    def first(count)
      if count <= 5
        return [2, 3, 5, 7, 11].take(count)
      end

      last = limit(count)
      numbers = [nil, nil] + [*2..last]

      numbers.each do |n|
        next if n.nil?
        break if n*n > last

        (n*2..last).step(n) { |index| numbers[index] = nil }
      end

      numbers.compact.take(count)
    end

    private

    def limit(n)
      (n * Math.log(n) + n * Math.log(Math.log(n))).round
    end
  end
end
