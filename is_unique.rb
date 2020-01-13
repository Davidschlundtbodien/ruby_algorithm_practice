#Determine if a string has all unique characters

def unique_chars (string)
  array = string.split(%r{\s*})
  array.each do |char|
    char_count = array.count(char)
    if char_count > 1 
      return "Has repeat characters"
    end    
  end
  return "Every character is unique."
end

p unique_chars("Hello all")

p unique_chars(" Space ")