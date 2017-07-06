# Create an array for each item below that contains the given information:
  # your favourite colours
  # the age of you and your siblings/cousins/friends
  # flip a coin 5 times and record whether or not the result was 'heads'
  # your three favourite performing artists
  # your favourite colours again (this time as symbols instead of strings)

colours = []
  colours << "purple" << "blue" << "white" << "grey" << "gold"
family = [ 38, 36, 30]
coin_flip =[]
  coin_flip << "heads" << "tails" << "tails" << "heads" << "tails"
artists = []
  artists << "Hole" << "Amaia Montero" << "biggie smalls"
fav_colours = [ :pink, :purple, :blue, :white, :grey, :gold]

# Create a hash for each item below that contains the given information:
  # three words and their definitions
  # your favourite movie names and their year of creation
  # three cities of the world and their population
  # the names of your siblings/cousins/friends and their age

definitions = { :nepotism => "the practice among those with power or influence of favoring relatives or friends, especially by giving them jobs." , :entitlement => " he belief that one is inherently deserving of privileges or special treatment.", :privilege => "a special right, advantage, or immunity granted or available only to a particular person or group of people."}

movies = {:Unforgiven => 1992, :Tombstone => 1993, :Goodfellas => 1991}

cities = {:San_Salvador => 6167147, :Toronto => 6418000, :Cockburn_Town => 4831}

siblings = {:Hector => 38, :Nadia => 36, :Nicole => 30}

# Print out the array of coin flips.
# Print out the first element of the array of your favourite colours.
# Output the sorted version of the array of your friends and family members' ages.
# Add a new baby (0 years old) to the array of your family's ages.
# Using the hash of movie information, access and print the year of one of the movies.

puts coin_flip
puts fav_colours.at(0)
puts siblings.sort
puts siblings[:baby]=0

movies = {:Unforgiven => 1992, :Tombstone => 1993, :Goodfellas => 1991}

def value_discovery(hash)
  hash.each do |key, value|
    puts value
  end
end

value_discovery(movies)

# Print out the last element of the array of your favourite colours.
  # Note: this should work for an array of any size!
# Add a new city to the hash of cities and population.
# Reverse the array of coin flips and save it.
# Print out the population of one of the cities.
# Print out a sentence about each item in the array of performing artists. For example:
  # I think Pearl Jam is great.
  # I think Lady Gaga is great.
  # I think Pink Floyd is great.

  puts fav_colours.last
  cities[:Krabi] = 53000
  puts coin_flip.reverse
  puts cities[:San_Salvador]

def the_best(array)
  array.each do |value|
  puts "#{value} is a genio"
  end
end

puts the_best(artists)

# Print out the first two performing artists in that array.
# For each of your favourite movies, print out a sentence about when the movie was released. For example:
  # Avatar came out in 2009.
  # Mean Girls came out in 2004.
  # The Matrix came out in 1999.
# Sort and reverse the array of ages of your family.
  # Save it and print it to the screen.
# See if you can sort and reverse the array on one line!
# Add "Beauty and the Beast" movie to your hash of movies informatio
  # with a twist: the movie was released both in 1991 and in 2017.
  # Print it out.


  puts artists[0..1]

  def year_of_release(hash)
    hash.each do |key, value|
    puts "#{key} came out in #{value}"
    end
  end
year_of_release(movies)

puts siblings.sort.to_h

puts family.reverse
puts family.sort

movies[:Beauty_and_the_Beast]=[1992,2016]
puts movies

# Print out all of the ages of your friends/family that are less than 30 (or any number where some ages will not be printed!).
# Find and output the age of the oldest person in your friends/family array.
# Count how many times you flipped 'heads' using the coin flips array.
# You realize one of the performing artists in your list is no longer a favourite. Remove one of them from the array.
# Pick a city in your city population hash and change its population.


def under_30(hermanos)
  hermanos.each do |key, value|
    if value < 30
      puts "#{key} is #{value}"
    end
  end
end

under_30(siblings)

# or

# siblings.each do |key, value|
  # if value < 30
    # puts "#{key} is #{value}"
  # end
# end

puts family.max

# coin_flip =[]
  # coin_flip << "heads" << "tails" << "tails" << "heads" << "tails"

  # puts coin_flip.count("heads")

head = 0

coin_flip.each do |flips|
  if flips == "heads"
    head = (head) + 1
  end
end

puts head

  artists.delete_at(1)
puts artists

cities[:Cockburn_Town] = 1

# Find the sum total of the population in the hash of cities.
# Using your hash containing the names of your family and friends with their ages, print out one of two messages for each depending on their age. For example:
  # Martha is old.
  # Stewart is young.
  # Holly is young.
# Print out the last two colours in your array of favourite colours.
# Increase by 1 the age of everyone in your array of ages. Print it out.
# Add two new colours to your array of favourite colours.


total_population = 0
cities.each do |city, population|
  total_population = total_population + population
end
puts total_population

siblings.each do |name, age|
  if age > 30
    puts "#{name} is old"
  else
    puts "#{name} is young"
  end
end

puts fav_colours[-2 .. -1]

new_age = [0]

family.each do |age|
  new_age = age + 1
  puts new_age
end

fav_colours << "black" << "indigo"
puts fav_colours
