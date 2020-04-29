def begins_with_r words
  words.all? {|word| word[0] == "r"}
end

def contain_a words
  words.reject {|word| !word.include?("a")}
end

def first_wa words
  words.find { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings array
  array.reject {|elem| !elem.instance_of? String}
end

def count_elements array
  results = []
  array.each_with_index do |hash|
    name = hash[:name]

    # looks for a result that already has the given name
    entry_index = results.find_index{|item| item[:name] == name }
    # if found, increment
    if entry_index
      results[entry_index][:count] += 1
    # otherwise, add a new entry to results for this name
    else
      results << {:name => name, :count => 1}
    end

  end

  results
end

def merge_data data_1, data_2
  result = []
  data_1.each_with_index do |hash1, index|
    hash2 = data_2[index]

    result << (hash1.merge hash2)

  end
  result
end

def find_cool array
  array.reject do |hash|
    puts hash[:temperature]
    hash[:temperature] != "cool"
  end
end

def organize_campuses campuses
  results = {}

  campuses.each do |key, value|
    school = key;
    location = value[:location]
    results[location] ||= []
    results[location] = results[location].push(school)
  end

  results
end