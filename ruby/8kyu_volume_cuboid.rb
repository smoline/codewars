# https://www.codewars.com/kata/volume-of-a-cuboid

# Bob needs a fast way to calculate the volume of a cuboid with three values: length,
# width and the height of the cuboid. Write a function to help Bob with this calculation.

require 'awesome_print'

def get_volume_of_cuboid(length, width, height)
  length * width * height
end

# Another Solution
def get_volume_of_cuboid2(*dimensions)
  dimensions.inject(:*)
end

answer = get_volume_of_cuboid(1, 2, 2)
ap answer
# 4

answer = get_volume_of_cuboid2(1, 2, 2)
ap answer
# 4