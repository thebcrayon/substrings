def substrings(string, dictionary)
  array_of_instances = Array.new(0)
  
  string.split.each do |item|
    dictionary.each do |dict_word|
      array_of_instances.push(dict_word) if item.downcase.include?(dict_word.downcase)
    end
  end

  array_of_instances.reduce(Hash.new(0)) do |result, word|
   result[word] += 1 if string.downcase.include?(word.downcase)
   result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)

