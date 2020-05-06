def begins_with_r(array)
    array.each do |word|
        if !word.start_with?("r")
         return false
        end
    end
    true 
end

def contain_a(array)
    a_array= array.select do |words|
        words.include?("a")
    end
    a_array 
end 

def first_wa(array)
    array.find do |combo|
        if combo.to_s.start_with?("wa")
            array 
        end
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

def merge_data(array1, array2)
    new_array= []
    array2.each_with_index do |element,index|
    new_array.push(array2[index].merge(array1[index]))
    end 
    new_array
end

def find_cool(array)
    array.each do |element|
        element.each do |key,value|
            if value == "cool"
            return [element]
            end
        end
    end
end

def organize_campuses(hash)
    new_hash= {}
    hash.each do |school_name, value|
        value.each do |location, state|
            if new_hash.include?(state)
                new_hash[state]<<school_name 
            else 
                new_hash[state]= [school_name]
            end  
        end 
    end 
    new_hash
end