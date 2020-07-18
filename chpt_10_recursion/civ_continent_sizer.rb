# civ_continent_sizer.rb

M = 'land'
o = 'water'

world = [
          [o,o,o,o,o,o,o,o,o,o,o],
          [o,o,o,o,M,M,o,o,o,o,o],
          [o,o,o,o,o,o,o,o,M,M,o],
          [o,o,o,M,o,o,o,o,o,M,o],
          [o,o,o,M,o,M,M,o,o,o,o],
          [o,o,o,o,M,M,M,M,o,o,o],
          [o,o,o,M,M,M,M,M,M,M,o],
          [o,o,o,M,M,o,M,M,M,o,o],
          [o,o,o,o,o,o,M,M,o,o,o],
          [o,M,o,o,o,M,o,o,o,o,o],
          [o,o,o,o,o,o,o,o,o,o,o]
        ]

def continent_size (world, x, y)
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

puts continent_size(world, 5, 5)
