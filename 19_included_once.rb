# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#

<<<<<<< HEAD
def includedOnce(haystack, needle)
  # Your code here
=======
def includedOnce (haystack, needle)
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
  haystack.count(needle) == 1
end
