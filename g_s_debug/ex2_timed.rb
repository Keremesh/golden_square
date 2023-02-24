def encode(plaintext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
#   p key.chars
#   p ('a'..'z').to_a - key.chars

#   exit
#   p = "cipher is #{cipher}" # outputs unique chars in alphabetical order after "secrtky"
  ciphertext_chars = plaintext.chars.map do |char|
    # p "cipher.find_index(char):"
    # p cipher.find_index(char) #tries to find an index in some sort of list, next - what is char?
    # p char 
    # p cipher
    (65 + cipher.find_index(char)).chr
end
  return ciphertext_chars.join
end

def decode(ciphertext, key)
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  plaintext_chars = ciphertext.chars.map do |char|
#   p char
#   p char.ord
    out_char = cipher[(char.ord - 65)] # -4
    # p "should be h"
    # p "actually is #{out_char}"
    # exit
  end
  return plaintext_chars.join
end

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"
puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
p decode(encode("okayfineyeshello", "okayden"), "okayden")