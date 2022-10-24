class Triangle
  # write code 
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end

  def kind

    if a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif  a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    else
      if @a == @b && @b == @c
        :equilateral
      elsif  @a == @b || @c == @a || @b == @c
        :isosceles
      else 
        :scalene
      end
    end
   
  end  
  
  class TriangleError < StandardError
    def message
      "Invalid!"
    end
  end

end
