# your code goes here
def begins_with_r(array)
  array.each do |word|
    if !word.start_with?("r")
      return false
    end
  end
  true
end

def contain_a(array)
  results = array.select do |letter|
    letter.include?("a")
  end
  results
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a? String
  end
end

def count_elements(array)
  array.each do |hash_1|
    hash_1[:count] = 0
    name = hash_1[:name]
    array.each do |hash|
      if hash[:name] == name
        hash_1[:count] += 1
      end
    end
  end.uniq
end

def merge_data(array_1, array_2)
  new_array = []
  array_1.each_with_index do |element, index|
    new_array.push(array_1[index].merge(array_2[index]))
  end
  new_array
end

def find_cool(array)
  array.each do |element|
    element.each do |key, value|
      if value == "cool"
        return [element]
      end
    end
  end
end

def organize_campuses(campus_data)
  new_campus_data = {}
  campus_data.each do |key, value|
    value.each do |location, state|
      if new_campus_data.include?(state)
        new_campus_data[state] << key
      else
        new_campus_data[state] = [key]
      end
    end
  end
  new_campus_data
end