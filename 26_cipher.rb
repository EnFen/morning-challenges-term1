# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].

class CaesarCipher
  def initialize(shift)
    #your code here
    @shift = shift
    @alphabet = ('A'..'Z').to_a
  end

  def encode(string)
    #your code here
    char_array = string.upcase.chars
    encoded_array = []  

    for char in char_array do
      if !@alphabet.include?(char)
        encoded_array << char
        next
      else
        if @alphabet.index(char) + @shift > 25
          shifted_index = @alphabet.index(char) + @shift - 26
        else 
          shifted_index = @alphabet.index(char) + @shift
        end
      end
      encoded_array << @alphabet[shifted_index]
    end

    return encoded_array.join
  end
  
  def decode(string)
    #your code here
    char_array = string.upcase.chars
    decoded_array = []

    for char in char_array do
      if !@alphabet.include?(char)
       decoded_array << char
       next
      else
        if @alphabet.index(char) - @shift < 0
          shifted_index = @alphabet.index(char) - @shift + 26
        else
          shifted_index = @alphabet.index(char) - @shift
        end
      end
      edecoded_array << @alphabet[shifted_index]
    end
    
    return decoded_array.join
  end
end
