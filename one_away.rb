 # Given two strings, write a function to check if they are one edit 9or zero edits) away. 

def one_away (str1, str2)
  count = str2.count(str1)
  if count == str1.length - 1 || count == str1.length + 1
    return "True"
  else
    return "False"
  end   
end

p one_away("one", "once")