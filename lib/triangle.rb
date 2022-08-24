class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    validate_triangle
    if a==b && b==c
      :equilateral
    elsif a==b || b==c || a==c
      :isosceles
    else
      :scalene
    end
  end

  def side_larger_than_zero?
    @a > 0 && @b > 0 && @c > 0
  end

  def valid_triangle_inequity?
    a + b > c && a + c > b && b + c > a
  end

  def validate_triangle
    raise TriangleError if !side_larger_than_zero? || !valid_triangle_inequity?
  end
  
  class TriangleError < StandardError
  end

end
