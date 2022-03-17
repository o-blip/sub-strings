def substrings(string, dictionary)
    word_count = Hash.new(0)
    filtered_str = filter_string(string)

    dictionary.each do |word|
        check_array = create_substr(filtered_str, word.length)
        word_check = word.chars
        word_count[word] = check_array.count(word_check)
    end
    
    word_count.delete_if{|word, count| count == 0}
    return word_count
end


def filter_string(string)
    # filters out symbols and creates array of lower-case characters
    str_array = string.downcase.split('')
    filtered_array = str_array.select{|letter| (97..122) === letter.ord || 32 == letter.ord} # ASCII code for letters: 97-122
end

def create_substr(char_array, length)
    # creates array of arrays of specified length with consecutive characters
    sub_strings = char_array.each_cons(length).to_a
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)