# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates

# @candidates.each do |candidate|
#   puts "Candidate ID #{candidate[:id]} is experienced? #{experienced?(candidate)}"
# end

# puts "Here is the canidiate: #{find(5)}"

# puts qualified_candidates

# qualified = qualified_candidates(@candidates)
# puts "Qualified candidates:"
# puts qualified

# @candidates.each do |candidate|
#   puts "#{applied_within_15?(candidate)}"
# end

puts ordered_by_qualifications(@candidates)