

def caesar_cipher (enter_string, number)
    temp_cipher = []
    final_cipher = []
    alphabet = ("a".."z").to_a
    iteration = 1
    enter_string.each_char do |letter|
        iteration = iteration + 1
        if letter == " "
            temp_cipher.push(" ")
        elsif alphabet.include?(letter)
            temp_cipher.push(alphabet.index(letter).to_s)
        else
            temp_cipher.push("*")
            temp_cipher.push(alphabet.index(letter.downcase).to_s)
        end
    end
    next_upcase = false
    temp_cipher.each() do |char|
        if char == " "
            final_cipher.push(" ")
        elsif char == "*"
            next_upcase = true

        elsif next_upcase.equal?(true)
            next_upcase = false
            final_cipher.push(alphabet[char.to_i + number].upcase)
        else
           final_cipher.push(alphabet[char.to_i + number])
        end
    
    end
    return final_cipher.join
end





puts caesar_cipher("This is A StRing", 5)