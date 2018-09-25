<<<<<<< HEAD
require 'test/unit'

=======
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
# Vowels
#
# Write a method that will take a string and
# return an array of vowels used in that string.
#
# Difficulty:
# 4/10
#
# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]
#
# Check your solution by running the tests:
# ruby tests/04_vowels_test.rb
#

<<<<<<< HEAD
# def count_vowels(string)
#   characters = string.chars
#   vowels = ['a', 'e', 'i', 'o', 'u']
#   included_vowels = []

#   for character in characters do 
#     if vowels.include?(character)
#       included_vowels << character
#     end
#   end

#   return included_vowels
# end

# Alternative

# def count_vowels(string)
#  return string.each_char.select { |character| character if ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'].include?(character)}
# end

def count_vowels(string)
  string.scan(/[aeiou]/i)
end

class LargestNumberTest < Test::Unit::TestCase
  def test_vowels
    assert_equal(["e","u","i","o","o"], count_vowels("The quick brown fox"))
    assert_equal(["e","o","o"], count_vowels("Hello World"))
  end
  def test_vowels_casing
    assert_equal(["A","e","E"], count_vowels("cAse tEst"))
  end
end
=======
def vowels (string)
  string.scan(/[aeiou]/i)
end
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
