# The Collatz Conjecture or 3x+1 problem can be summarized as follows:
# Take any positive integer n. If n is even, divide n by 2 to get n / 2. If n is
# odd, multiply n by 3 and add 1 to get 3n + 1. Repeat the process indefinitely.
# The conjecture states that no matter which number you start with, you will
# always reach 1 eventually.
# Given a number n, return the number of steps required to reach 1.

class CollatzConjecture
  ERROR_MESSAGE = 'The argument must be positive.'
  def self.steps(n)
    raise ArgumentError, ERROR_MESSAGE if n <= 0
    steps = 0
    while n != 1
      n = n.even? ? n/2 : 3*n + 1
      steps += 1
    end
    steps
  end
end


module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end


# puts CollatzConjecture.steps(1)
# puts CollatzConjecture.steps(0)
