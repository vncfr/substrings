def substrings (string, dictionary)
  hash = Hash.new
  string = string.downcase
  string_separated = string.split(" ")
  dictionary.each do |dictionary_word|
    counter = 0
    string_separated.each do |string_word|
      if string_word.include?(dictionary_word)
        counter += 1
      end
    end
    hash[dictionary_word] = counter
  end
  hash.delete_if { |key, value| value == 0}
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
