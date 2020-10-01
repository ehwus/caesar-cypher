def caesar_cipher(string, shift)
    # Iterate over all chars in string
    string.split("").map do |char|
        # Check if character
        if char.match(/[a-zA-Z]/)
            # Add shift if so
            (char.ord() + shift).chr 
        else
            # Use just the input if not
            char
        end
    end
end

# test - expecting "Bmfy f xywnsl!"
p caesar_cipher("What a string!", 5)