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
  unless all_sides_positive(a, b, c)
    raise TriangleError
  end

  if (a == b && a == c)
    :equilateral
  elsif (a == b || a == c || b == c)
    :isosceles
  else
    :scalene
  end
end

def all_sides_positive(a, b, c)
  if(a > 0 && b > 0 && c > 0)
    valid_triangle(a, b, c)
  else
    false
  end
end

def valid_triangle(a, b, c)
  sides = [a, b, c].sort
  longest = sides[2]
  longest > sides[0] + sides[1]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
