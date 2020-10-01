def caesar_cipher(string, shift)
    # Iterate over all chars in string
    string.split("").map do |char|
        # Check if character capitalized ascii
        if char.match(/[A-Z]/)
            # Add shift if so
            # work out alphabet position in normal terms
            reg_alphabet = char.ord - 64
            # add the shift with mod for overspill, convert back to ascii
            new_value = (reg_alphabet + shift) % 26 + 64
            new_value.chr
        # check if lowercase ascii
        elsif char.match(/[a-z]/)
            # same process but lower case ASCII
            reg_alphabet = char.ord - 96
            new_value = (reg_alphabet + shift) % 26 + 96
            new_value.chr
        else
            # Use just the input if not either
            char
        end
    # convert array back to string and return
    end.join("")
end

# test - expecting "Bmfy f xywnsl!"
p caesar_cipher("What a string!", 5)