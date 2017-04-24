require 'rspec'
require 'triangle'

describe(Triangle) do
  describe("#triangle_type") do
    it("returns 'Equilateral' if the triangle is Equilateral") do
      new_triangle = Triangle.new(2,2,2)
      expect(new_triangle.triangle_type).to(eq("Equilateral"))
    end

    it("returns 'Isosceles' if the triangle is Isosceles") do
      new_triangle = Triangle.new(2,4,4)
      expect(new_triangle.triangle_type).to(eq("Isosceles"))
    end

    it("returns 'Scalene' if the triangle is Scalene") do
      new_triangle = Triangle.new(2,5,6)
      expect(new_triangle.triangle_type).to(eq("Scalene"))
    end

    it("returns 'Not a triangle' if the triangle is Not a triangle") do
      new_triangle = Triangle.new(2,5,25)
      expect(new_triangle.triangle_type).to(eq("Not a triangle"))
    end

    it("checks if the method is called on numbers") do
      new_triangle = Triangle.new("apple", "burrito", "Niklas")
      expect(new_triangle.triangle_type).to(eq("That is NOT valid input. Please use positive numbers only"))
    end
  end
end
