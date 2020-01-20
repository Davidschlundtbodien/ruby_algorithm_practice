# given an img represented by an NxN matrix, where each pixel is 4 bytes, write a method to rotate by 90 degrees
matrix = [[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]]

def rotate (matrix, direction)

  if direction.downcase == "clockwise"
    p "Clockwise in place"
    matrix.reverse!.each_with_index { |_,i| (0...i).each { |j| matrix[j][i], matrix[i][j] = matrix[i][j], matrix[j][i] } }
  else
    p "Counter-Clockwise in place"
    matrix.map(&:reverse!).each_with_index { |_,i| (0...i).each { |j| matrix[j][i], matrix[i][j] = matrix[i][j], matrix[j][i] } }
  end  

end

p rotate(matrix, "Clockwise")
p rotate(matrix, "")


#Not in place
p "Clockwise"
p matrix.reverse.transpose
p "Counter-Clockwise"
p matrix.transpose.reverse

