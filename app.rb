require "pry-byebug"
# First of all it could be very useful to create a hash that asociates each letter with its numerical value

# Even thought I've written as strings the keys of the letter_values hash they are :symbols
english = {"a": 1, "b": 2, "c": 3, "d": 4, "e": 5,
                 "f": 6, "g": 7, "h": 8, "i": 9, "j": 10,
                 "k": 11, "l": 12, "m": 13, "n": 14, "o": 15,
                 "p": 16, "q": 17, "r": 18, "s": 19, "t": 20,
                 "u": 21, "v": 22, "w": 23, "x": 24, "y": 25,
                 "z": 26}


# Let's ensure that we can correctly access the values inside of the hash by calling some of the letters
example_letters = ["a", "j", "n", "q", "$", "t", "z"]


def read(message, alphabet_hash)
  message_char_values = []
  for letter in message

    # Parsing the "letters" of the message to from "strings" to :symbols
    letter = letter.to_sym
    
    # If the string you are currently supervising in the loop is in the hash, push its value to the values array
    if alphabet_hash.keys.include?(letter)
      message_char_values.push(alphabet_hash[letter])
    
    # If the string isn't in the hash, nil is pushed to the values array, instead
    else
      message_char_values.push(nil)
    end
  end

  # Returning the numerical value of each letter in an array
  return message_char_values
end

# Trying out the #read method
print read(example_letters, english)