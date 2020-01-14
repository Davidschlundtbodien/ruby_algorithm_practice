 # Write a function that checks whether two given strings are Permutations of each other or not. A permutation of a string is another string that contains the same characters, only the order of the characters can be different. example: "abcd" and "dcba" are permutations of each other

def permutation(string1, string2)
  array = string1.chars
  if string1.length == string2.length
    array.each do |char|
    if string2.include?(char)
    else
      return "Not permutations"
    end  
    end
  else 
    return "The length of the two strings are not equal."
  end 
  return "These strings are permutations."
end

p permutation("abcd", "cdba")

p permutation("abcd", "ccba")

p permutation("abcd", "adbca")