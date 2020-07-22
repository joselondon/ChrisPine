# civ_continent_sizer.rb

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
  size = size + continent_size(world, x  , y-1)
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
(5,5)[Land] count =1;  (4,4)[Water] Count =1
(5,4)[Land] count =2; (4,3)[Land] count=3; (3,2)[water] count =3
(6,4)Land count =4;  (7,3)land count =5; (8,2)water count = 5
(4,5)land count = 6; (3,5)water count = 7
=end

# puts continent_size(world, 1, 4)
puts continent_size(world, 5, 5)
