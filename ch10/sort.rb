def sort some_array
  recursive_sort some_array, [] 
end 

def recursive_sort unsorted_array, sorted_array
  if unsorted_array.length == 0
    return sorted_array
  else
    small = unsorted_array.min
    unsorted_array.delete_at(unsorted_array.index(small))
    sorted_array.push(small)
    return recursive_sort unsorted_array, sorted_array
  end
end

puts(sort(['can','feel','singing','like','a','can']))
