# https://www.codewars.com/kata/volume-of-a-cuboid

def get_volume_of_cuboid(length, width, height)
  length * width * height
end

# Another Solution
def get_volume_of_cuboid(*dimensions)
  dimensions.inject(:*)
end
