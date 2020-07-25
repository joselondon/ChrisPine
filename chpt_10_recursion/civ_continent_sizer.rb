# civ_continent_sizer.rb
require 'pry'

M = 'land'
o = 'water'
# size  = 1
world =
        [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

def continent_size (world, x, y)
  if world[x][y] != 'land'
    # Either it is water or we already counted it,
    # but either way, we do not want to count it now.
    return 0
  end
  # So first we count this tile..
  size = 1
  world[x][y] = 'counted land'
#  ...then we count all of the neighbouring eight tiles
# (and of course their nighbours by way of the recursion).
  size = size + continent_size(world, x-1, y-1)
  #x = 5, y = 5 becasue x-1,y-1 returns 0 and breaks
  size = size + continent_size(world, x  , y-1)
  #x = 4, y = 3 
      binding.pry
  size = size + continent_size(world, x+1, y-1)
  size = size + continent_size(world, x-1, y  )
  size = size + continent_size(world, x+1, y  )
  size = size + continent_size(world, x-1, y+1)
  size = size + continent_size(world, x  , y+1)
  size = size + continent_size(world, x+1, y+1)
  size
end
=begin
ME STEPPING THROUGH THIS CODE TO UNDESTAND!!!!
size = 1
base case (5,5)-L
(4,4)-W return 0

=end

# puts continent_size(world, 1, 4)
puts continent_size(world, 5, 5)

def args(a)

end
