
  def begins_with_r(arr)
    arr.all? do |string|
    string[0] == "r"
  end
end


  def contain_a(arr)
    arr.select do |string|
    string.include?("a")
  end
end

  def first_wa(arr)
    arr.detect do |string|
    string[0,2] == "wa"
  end
end


  def remove_non_strings(arr)
    arr.delete_if do |string|
    string.is_a?(String) == false
  end
end


  def count_elements(array)
    array.uniq.each {|i| count = 0
        array.each {|i2| if i2 == i then count += 1 end}
        i[:count] = count}
  end

  def merge_data(arr1, arr2)
    new_array = []
    arr1.each_with_index do |element, index|
      new_array.push(arr1[index].merge(arr2[index]))
    end
    new_array
  end

  def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}}
  end

  def organize_campuses(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
  end
