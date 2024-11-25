# frozen_string_literal: true

# The Exercise class contains methods for word transformation and Fibonacci sequence operations.
class Exercise
  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.split.map do |word|
      next word if word.length <= 4

      replacement = word[0] == word[0].upcase ? 'Marklar' : 'marklar'

      next replacement + word[-1] if word[-1] =~ /[[:punct:]]/

      replacement
    end.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    return 0 if nth <= 1

    a = 1
    b = 1
    sum = 0
    (3..nth).each do
      a, b = b, a + b
      sum += b if b.even?
    end

    sum
  end
end
