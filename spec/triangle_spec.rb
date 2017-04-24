require 'rspec'
require 'triangle'

describe(Triangle) do
  describe("#triangle_type") do
    it("returns true if the triangle is equilateral") do
      new_triangle = Triangle.new(2,2,2)
      expect(new_triangle.triangle_type).to(eq(true))
    end
  end
end
