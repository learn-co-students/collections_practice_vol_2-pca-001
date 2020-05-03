require 'pry'

def begins_with_r(array)
  array.each do |word|
    return false if !word.start_with?("r")
  end
  true
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.select {|word| word.is_a?(String)}
end

def count_elements(array_of_hash)
  answer_array = []
  
  array_of_hash.each do |hash|
    hash.each do |key, name|
      if answer_array == []
        answer_array << {:name => name, :count => 1}
      elsif answer_array[0][:name] == name
        answer_array[0][:count] += 1
      elsif answer_array[1] == nil
        answer_array << {:name => name, :count => 1}
      elsif answer_array[1][:name] == name
        answer_array[1][:count] += 1
      else
        answer_array << {:name => name, :count => 1}
      end
    end
  end
  answer_array
end

def merge_data(array1, array2)
  i = 0
  ans_array = []
  array2.each do |hash|
    ans_array << array1[i].merge(hash)
    i += 1
  end
  ans_array
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

def organize_campuses(campus_hash)
  organized_campuses = {}
  campus_hash.each do |school_name, hash|
    hash.each do |location, state| #grabs each nested hash
      if organized_campuses.include?(state) #tests if state is already in answer hash
        organized_campuses[state] << school_name #adds new school to array
      elsif 
        organized_campuses[state] = [school_name]
      end
    end
  end
  organized_campuses
end

