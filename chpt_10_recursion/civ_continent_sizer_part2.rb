# civ_continent_sizer_part2.rb
require 'pry'

M = 'land'
o = 'water'
# size  = 1
world =
        [[M,M,M,M,M,M,M,M,M,M,M],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,M,o,o,M,M,o],
         [o,o,o,M,o,M,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [M,M,M,M,M,M,M,M,M,M,M],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,M,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,M,o,o,o,o,o]]

def continent_size (world, x, y) #(9,2)
  y_length = world.length - 1
  x_length = world[0].length - 1

  if y < 0 || y > y_length || x < 0 || x > x_length
    return 0
  end


  # need a check here to see if x or why are greater than the array lengths
  if world[y][x] != 'land'
    # Either it is water or we already counted it,
    # but either way, we do not want to count it now.
    return 0
  end
  # So first we count this tile..
  size = 1
  world[y][x] = 'counted land'
#  ...then we count all of the neighbouring eight tiles
# (and of course their nighbours by way of the recursion).
  size = size + continent_size(world, x-1, y-1)
  size = size + continent_size(world, x  , y-1)
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y  )
  size = size + continent_size(world, x+1, y  )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x  , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end

puts continent_size(world, 4,0)
