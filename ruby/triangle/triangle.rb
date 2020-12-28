class Triangle
  def initialize(triangle_sides)
    @triangle_sides = triangle_sides.sort
  end

  def equilateral?
    triangle? ? @triangle_sides.uniq.size == 1 : false
  end

  def isosceles?
    triangle? ? @triangle_sides.uniq.size == 1 || @triangle_sides.uniq.size == 2 : false
  end

  def scalene?
    triangle? ? @triangle_sides.uniq.size > 2 : false
  end

  def triangle?
    result = true
    if @triangle_sides.all? { |x| x <= 0 }
      result = false
    end

    if @triangle_sides[0] + @triangle_sides[1] <= @triangle_sides[2]
      result = false
    end
    result
  end
end

if $PROGRAM_NAME == __FILE__
  triangle1 = Triangle.new([4, 4, 4])
  triangle2 = Triangle.new([1, 3, 1])
  triangle3 = Triangle.new([3, 1, 1])
  triangle4 = Triangle.new([5, 4, 6])

  p [4, 4, 4]
  p triangle1.equilateral?
  p triangle1.isosceles?
  p triangle1.scalene?
  puts
  p [1, 3, 1]
  p triangle2.equilateral?
  p triangle2.isosceles?
  p triangle2.scalene?
  puts
  p [3, 1, 1]
  p triangle3.equilateral?
  p triangle3.isosceles?
  p triangle3.scalene?
  puts
  p [5, 4, 6]
  p triangle4.equilateral?
  p triangle4.isosceles?
  p triangle4.scalene?
end
