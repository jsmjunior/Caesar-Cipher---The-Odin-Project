
# test if the char is upcase or downcase
def test_char(char)
    if(char == char.upcase)
        return true
    else
        return false
    end
end
            
    # main function to return the caeser cipher
def caesar_cipher(toCodify, keyCodify)
    codify_array = toCodify.split("")
    array_for_cipher = []
    codify_array.map do |char|
        if char == " "
              array_for_cipher.push(" ")
        else
        array_for_cipher.push(turn_char_cipher(char, keyCodify) )
        end
    end
    array_for_cipher.join
end

#turn each char at cipher 
def turn_char_cipher(char, keyNumber)
    
    alphabet = ("a".."z").to_a
    returned_char = ""
    temp_num = ""
    
    # call the test to se if was upcase (true) or downcase(false)
    if test_char(char) 
        char = char.downcase
        temp_num = alphabet.index(char).to_s
        temp_num = temp_num.to_i + keyNumber.to_i
        returned_char = alphabet[temp_num].upcase


    else
        
        temp_num = alphabet.index(char).to_s
        temp_num = temp_num.to_i + keyNumber.to_i
        returned_char = alphabet[temp_num]
    end

    return returned_char


end


# print on the terminal the caeser cipher
puts caesar_cipher("This is A StRing", 5)