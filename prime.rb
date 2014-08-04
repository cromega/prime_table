Dir['lib/**/*.rb'].each { |lib| require_relative lib }

primes = PrimeGenerator::Sieve.new.first(10)

table = []

num = primes.count
num.times do |outer|
  row = []
  num.times do |inner|
    row << primes[outer] * primes[inner]
  end
  table << row
end

TableBuilder.new(STDOUT, header: primes, leader: primes).table do |builder|
  table.each { |row| builder.row(row) }
end
