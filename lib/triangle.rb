class Triangle
  # write code here
  def initialize(length1, length2, length3)
    @length1=length1
    @length2=length2
    @length3=length3
  end
  def kind
    length_array=[@length1, @length2, @length3].sort
    case 
    when (length_array[2] >= (length_array[0]+length_array[1])) || (length_array[0]<=0) then raise TriangleError
    when (length_array[2]==length_array[1]) && (length_array[0]==length_array[1]) then return :equilateral
    when (length_array[2]==length_array[1]) || (length_array[0]==length_array[1]) then return :isosceles
    else return :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "This is the message"
    end
  end

end
