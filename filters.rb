# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
    # Your code Here 

    @candidates.find { |candidate| candidate[:id] == id}

end
  
def experienced?(candidate)
    # Your code Here
    candidate[:years_of_experience] >= 2
end
  

def knows_ruby_and_python?(candidate)
  candidate[:languages].include?('Ruby') && candidate[:languages].include?('Python')
end

def applied_within_15?(candidate)
  # Your code Here
  (0.days.ago.to_date.day - candidate[:date_applied].day) <= 15
end

def over_17?(candidate)
  # Your code Here
  candidate[:age] >= 18
end
  
def qualified_candidates(candidates)
    # Your code Here
    candidates.select do |candidate|
      experienced?(candidate) && candidate[:github_points] >= 100 && knows_ruby_and_python?(candidate) && applied_within_15?(candidate) && over_17?(candidate)
    end
end

def ordered_by_qualifications(candidates)
  candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
end

  
  # More methods will go below
