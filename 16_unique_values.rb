# Unique
#
# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.
#
# Difficulty:
# 5/10
#
# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]
#
# Hints:
# A hash could be helpful in your solution.
#
# Check your solution by running the tests:
# ruby tests/09_unique_test.rb
#

def unique (mylist)
<<<<<<< HEAD
  # Your code here
  keys_hash = {}
  for item in mylist do
    keys_hash[item] = true
  end
  unique_array = []
  for k, v in keys_hash do
    unique_array << k
  end
  return unique_array
  # return keys_hash.keys
=======
  hash = {}
  mylist.each { |x| hash[x] = true }
  hash.keys
>>>>>>> b028df5d644e116007105a13b9522c8e1282f993
end
