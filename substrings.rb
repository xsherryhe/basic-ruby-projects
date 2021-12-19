#A method that takes a string and a "dictionary" array of substrings, 
#and returns a hash with a tally of how many times each substring was found
def substrings(string, dictionary)
  dictionary.each_with_object(Hash.new) do |word, counts| 
    count = string.scan(/#{word}/i).length
    counts[word] = count if count > 0
  end
end