def begins_with_r(array)
  array.all? { |word| word[0] == "r" }
end

def contain_a(array)
  array.select { |word| word.include?("a") }
end

def first_wa(array)
  array.find { |word| word.to_s.start_with?("wa") }
end

def remove_non_strings(array)
  array.select {|word| word.is_a?(String)}
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

def merge_data(struct_1, struct_2)
  new_array = []
  struct_1.each_with_index do |element, index|
    new_array.push(struct_1[index].merge(struct_2[index]))
  end
  new_array
end

def find_cool(array)
  array.each do |hash|
    hash.each do |key, value|
      if value == "cool"
        return [hash]
      end
    end
  end
end

def organize_campuses(campus_data)
  organized_campuses = {}
  campus_data.each do |name, value|
    value.each do |location, state|
      if organized_campuses.include?(state)
        organized_campuses[state] << name
      elsif
        organized_campuses[state] = [name]
      end
    end
  end
  organized_campuses
end
