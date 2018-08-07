# Use the Sieve of Eratosthenes
# to find all the primes from 2 up to a given number.
class Sieve
  def initialize(limit)
    @limit = limit
    @all = 2.upto(limit).inject({}) do |result, value|
      result.merge(value => nil)
    end
  end

  def primes
    @all.select do |value, mark|
      next if mark == 'marked'
      mark_multiples_of(value)
      value
    end.keys
  end

  def mark_multiples_of(prime)
    (prime + 1).upto(@limit) do |n|
      @all[n] = 'marked' if (n % prime).zero?
    end
  end
end

module BookKeeping
  VERSION = 1
end
