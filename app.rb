require 'pry'

campus_hash = {
  "Flatiron School San Francisco" => {
    :location => "CA"
  },
  "Access Labs" => {
    :location => "NY"
  },
  "Flatiron School Seattle" => {
    :location => "WA"
  },
  "Flatiron School Manhattan" => {
    :location => "NY"
  }
}

organized_campuses = {}
campus_hash.each do |school_name, hash|
   #answer hash
  hash.each do |location, state| #grabs each nested hash
    if organized_campuses.include?(state) #tests if state is already in answer hash
      organized_campuses[state] << school_name #adds new school to array
    elsif 
      organized_campuses[state] = school_name
    end
  end
end
puts organized_campuses

#next: test to see if state is already in answer hash
#if it is, add school name to state's key array

#make a test to see if state is already key in answer array
test_hash = {"NY"=>["Flatiron School Manhattan"],
             "TX"=>["Flatiron School Houston"]
            }

if test_hash.include?("TX")
  "TX is here"
end

#next: add school to existing answer array 

test_hash["NY"] << "Access Labs"
