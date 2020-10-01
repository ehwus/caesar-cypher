def caesar_cipher(string, shift)
    string.split("").map { |char| p (char.ord() + shift).chr } 
end

# test - expecting "Bmfy f xywnsl!"
p caesar_cipher("What a string!", 5)