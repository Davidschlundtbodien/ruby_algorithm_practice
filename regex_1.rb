# Write a method 'daffify' that will take in a string and replace all the "s" with "th"

def daffify (string)
  return string.gsub(/[Ss]/, "th")
end

p daffify("Sam is Here!")