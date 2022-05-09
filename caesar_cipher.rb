# A simple Caesar cipher that takes in a string and shift factor, and returns the Caesar encryption.
def caesar_cipher(string, shift)
  string.gsub(/[A-Za-z]/) do |char|
    code = char.ord
    offset = code < 97 ? 65 : 97
    ((code - offset + shift) % 26 + offset).chr
  end
end
