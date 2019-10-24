$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #result = {
  #}
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
 
 #hash = {
  #directors_database[0][:name] => directors[database][0 #static][:movies][0 #loop][+=:worldwide_gross] 
  
  row_index = 0
  total = 0
  result = {}
  while row_index < nds.length
    director = nds[row_index][:name]
    column_index = 0
    while column_index < nds[row_index][:movies].length
      total += nds[row_index][:movies][column_index][:worldwide_gross]
      column_index += 1
    end
    row_index += 1
    result[director] = total
  end
  puts result
end

directors_totals(directors_database)


#[{:name=>"Stephen Spielberg",
  #:movies=>
   #[{:title=>"Jaws",
     #:studio=>"Universal",
     #:worldwide_gross=>260000000,
     #:release_year=>1975},
    #{:title=>"Close Encounters of the Third Kind",
     #:studio=>"Columbia",
     #:worldwide_gross=>135189114,
     #:release_year=>1977},
    #{:title=>"Raiders of the Lost Ark",
     #:studio=>"Paramount",
     #:worldwide_gross=>248159971,
     #:release_year=>1981},

