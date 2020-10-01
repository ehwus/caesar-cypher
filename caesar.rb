def caesar_cipher(string, shift)
    # Iterate over all chars in string
    string.split("").map do |char|
        # Check if character
        if char.match(/[A-Z]/)
            # Add shift if so
            # work out alphabet position in normal terms
            reg_alphabet = char.ord - 64
            # add the shift with mod for overspill, convert back to ascii
            new_value = (char.ord + shift) / 26 + 64
            char = new_value.chr
        else
            # Use just the input if not
            char
        end
    end
end

# test - expecting "Bmfy f xywnsl!"
p caesar_cipher("What a string!", 5)