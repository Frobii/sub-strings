dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    
    found_words = Hash.new(0)
    
    dictionary.each do |word| 
        if string.downcase.include?(word)
            found_words[word] += string.downcase.scan(/(?=#{word})/).count # add the occurences of word inside string to the hash
        end
    end

    return found_words

end

p substrings("Howdy partner, sit down! How's it going?", dictionary)