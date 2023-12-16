# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # should error if any side is 0
  if a == 0 || b == 0 || c == 0
    raise TriangleError, "Sides cannot be 0"
  end
  # should error if any side is negative
  if a < 0 || b < 0 || c < 0
    raise TriangleError, "Sides cannot be negative"
  end
  # should error if the sum of the lengths of any two sides is less than or equal to the length of the third side
  if (a + b) <= c || (b + c) <= a || (a + c) <= b
    raise TriangleError, "The sum of the lengths of any two sides must be greater than the length of the third side"
  end

  # equilateral: all sides are equal
  if a == b && b == c
    return :equilateral
  end
  # isosceles: exactly 2 sides are equal
  if a == b || b == c || a == c
    return :isosceles
  end
  # scalene: no sides are equal
  if a != b && b != c && a != c
    return :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
