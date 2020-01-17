# implement a method to preform basic string compression using the counts of repeated characters. 
# Example: 
# input: 'aabcccccaaa' returns: 'a2b1c5a3'
# If the compressed string would not become smaller than the original string then the method should return the original string. 
# You can assume that the string given will only contain uppercase and lowercase letters (a-z)



def str_compress (string)
  new_string = ""
  count = 0
  last_char = nil

  string.chars.each do |char|
    if char == last_char
      count += 1
    else
      new_string << "#{last_char}#{count}" if last_char
      last_char = char
      count = 1
    end
  end

  new_string << "#{last_char}#{count}" if last_char

  return new_string
  
end

p str_compress("aabbbccaaa")