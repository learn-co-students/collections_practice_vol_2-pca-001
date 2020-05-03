# your code goes here
def begins_with_r(arr)
    arr.all?{ |a| a[0] == "r" }
end

def contain_a(arr)
    arr.keep_if{ |a| a.include? "a" }
end

def first_wa(arr)
    arr.select{ |a| a.to_s[0..1] == "wa" }[0]
end

def remove_non_strings(arr)
    arr.select{ |a| a.is_a?(String) }
end

# bad smell, but not sure how to clean it up...
def count_elements(arr)
    count = {}
    ans = []
    arr.each{ |a| count.key?(a[:name]) ? count[a[:name]] += 1 : count[a[:name]] = 1 }
    count.each{ |k,v| ans.push({ :name => k, :count => v}) }
    ans
end

def merge_data(arr1, arr2)
    arr1.each_with_index.collect{ |a,i| a.merge(arr2[i]) }
end

def find_cool(arr)
    arr.select{ |a| a[:temperature] == "cool" }
end

# same as count_elements
def organize_campuses(arr)
    hash = {}
    arr.each{ |k,v| hash.key?(v[:location]) ? hash[v[:location]].push(k) : hash[v[:location]] = [k] }
    hash
end