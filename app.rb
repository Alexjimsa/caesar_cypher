# First of all it could be very useful to create a hash that asociates each letter with its numerical value

# Even thought I've written as "strings" the keys of the letter_values hash they are :symbols
english = {"a": 1, "b": 2, "c": 3, "d": 4, "e": 5,
           "f": 6, "g": 7, "h": 8, "i": 9, "j": 10,
           "k": 11, "l": 12, "m": 13, "n": 14, "o": 15,
           "p": 16, "q": 17, "r": 18, "s": 19, "t": 20,
           "u": 21, "v": 22, "w": 23, "x": 24, "y": 25,
           "z": 26}




def encrypt(message, alphabet_hash)
  # Transforming the message type from "string" to an [array]
  encrypted_message = message.split("")

  index = 0
  while index < message.length

    # Parsing the "letters" of the message to from "strings" to :symbols
    letter = message[index].downcase.to_sym
    
    # If the string you are currently supervising in the loop is in the hash, change its value
    if alphabet_hash.keys.include?(letter)
      letter_value = alphabet_hash[letter] + 2

      # In case we are in front of one of the last letters (xyx)
      if letter_value > 25
        letter_value = letter_value - 26
      end

      # Update the current position to the new letter (#to_s is necessary since we are accesing a :symbol, not a "string")
      encrypted_message[index] = (alphabet_hash.keys[letter_value]).to_s
    end

    index = index + 1 # Next position in the array (character), and iteration in the loop
  end

  # Returning the encrypted message (transforming the [array] into a "string" again with #join)
  return encrypted_message.join
end



# Let's ensure that we can correctly access the values inside of the hash by calling the function with some example messages
example_message_1 = "I've never played Pokémon X and Y"
example_message_2 = "Hello Caesar, I'm using your cypher!"
example_message_3 = "You owe me 20$"

puts encrypt(example_message_1, english)
puts encrypt(example_message_2, english)
puts encrypt(example_message_3, english)