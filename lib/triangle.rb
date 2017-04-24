class Triangle
  @@triangles = []

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @@triangles.push(self)
  end

  def side1
    @side1
  end
  
  def Triangle.all
    @@triangles
  end

  def Triangle.clear
    @@triangles = []
  end

  def triangle_type
    if (@side1 == @side2) && (@side1 == @side3)
      "Equilateral"

    elsif (@side1 == @side2 && @side1 + @side2 > @side3) || (@side2 == @side3 && @side2 + @side3 > @side1) || (@side1 == @side3 && @side1 + @side3 > @side2)
      "Isosceles"

    elsif (@side1 + @side2 <= @side3) || (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
      if( @side1.class == String || @side2.class == String || @side3.class == String)
        "That is NOT valid input. Please use positive numbers only"
      else
        "Not a triangle"
      end

    elsif (@side1 != @side2 && @side1 + @side2 > @side3 ) || (@side2 != @side3 && @side2 + @side3 > @side1 ) || (@side1 != @side3 && @side1 + @side3 > @side2)
      "Scalene"
    end
  end
end
