def substrings(string, dictionary)
    substr_count = Hash.new(0)
    str_array = string.downcase.split('') # want case-insensitive
    p str_array
    filtered_array = str_array.select{|letter| (97..122) === letter.ord}
    filtered_str = filtered_array.join


    dictionary.each do |word|
        if filtered_str.include?(word)
            substr_count[word] += 1
        end
    end
    return substr_count
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)