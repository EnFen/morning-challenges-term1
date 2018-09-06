require 'test/unit'
# *Quiz Letter blocks*
# You are given a collection of ABC blocks. Just like the ones you had when you were a kid. There are twenty blocks with two letters on each block. You are guaranteed to have a complete alphabet amongst all sides of the blocks. The sample blocks are:
[ ['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'], ['G','T'], ['R','E'], ['T','G'], ['Q','D'], ['F','S'], ['J','W'], ['H','U'], ['V','I'], ['A','N'], ['E','R'], ['F','S'], ['L','Y'], ['P','C'], ['Z','M'] ]

# If you test these words, these results will happen:
# can_make_word("A")
# # => true
# can_make_word("BARK")
# # => true
# can_make_word("BOOK")
# # => false
# can_make_word("TREAT")
# # => true
# can_make_word("COMMON")
# # => false
# can_make_word("SQUAD")
# # => true
# can_make_word("CONFUSE")
# # => true
# can_make_word("BOUGHT")
# # => false
# Write a program in ruby that evaluates can_make_word
# Extension
# Use the lots_of_words.txt file to test your code.
# Now order the words that can be made by length.

def letter_remaining?(test_letter, blocks)

    for block in blocks
        break true if block.include?(test_letter)
        return false            
    end
end

def can_make_word(test_word)
    
    blocks = [ ['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'], ['G','T'], ['R','E'], ['T','G'], ['Q','D'], ['F','S'], ['J','W'], ['H','U'], ['V','I'], ['A','N'], ['E','R'], ['F','S'], ['L','Y'], ['P','C'], ['Z','M'] ]
    letters = test_word.split('')

    duplicates = []
    for letter in letters
        if !letter_remaining?(letter, blocks)
            return false
        else
            blocks.index(le)

        end

    end
    
    # Split test word into letters
    # For each letter;
    # Run letter_remaining?
    # if false
    # return false
    # if true
    # => Store all blocks containing letter in new_array & delete in original array
    # => if new_array.length < 2, delete new_array
    # delete block
    # continue to run for next letter    
    # if word completes
    # return true
end



class Can_Make_Word_Test < Test::Unit::TestCase

    def test_letter_remaining?
        blocks = [ ['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'], ['G','T'], ['R','E'], ['T','G'], ['Q','D'], ['F','S'], ['J','W'], ['H','U'], ['V','I'], ['A','N'], ['E','R'], ['F','S'], ['L','Y'], ['P','C'], ['Z','M'] ]
        assert_equal(true, letter_remaining?('A', blocks))
    end

    def test_a
        assert_equal(true, can_make_word('A'))
    end

    # def test_bark
    #     assert_equal(true, can_make_word('BARK'))
    # end

    # def test_book
    #     assert_equal(false, can_make_word('BOOK'))
    # end

    # def test_treat
    #     assert_equal(true, can_make_word('TREAT'))
    # end

    # def test_common
    #     assert_equal(false, can_make_word('COMMON'))
    # end

    # def test_squad
    #     assert_equal(true, can_make_word('SQUAD'))
    # end

    # def test_confuse
    #     assert_equal(true, can_make_word('CONFUSE'))
    # end

    # def test_bought
    #     assert_equal(false, can_make_word('BOUGHT'))
    # end

end