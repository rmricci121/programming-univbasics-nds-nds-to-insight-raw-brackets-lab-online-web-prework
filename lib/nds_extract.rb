require "pry"
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

pp directors_database
def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
  #movies = directors_database[index][:name]
  #while index < movies.length  do 
    # puts grand_total = movies[index][:name]
    # index += 1
    # end
  directors_index = 0 
  grand_total = {} 
  while directors_index < nds.length do
      directors_name = nds[directors_index][:name]
      grand_total[directors_name] = 0  
      movies = nds[directors_index][:movies]
      movies_index = 0 
    while movies_index < movies.length do
  #binding.pry
     grand_total[directors_name] += movies[movies_index][:worldwide_gross]
      movies_index += 1
    end
    directors_index += 1
  end

  return grand_total
end
