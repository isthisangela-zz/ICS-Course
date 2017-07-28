def shuffle some_array
  recursive_shuffle some_array, [] 
end 

def recursive_shuffle unshuffled_array, shuffled_array
  if unshuffled_array.length == 0
    return shuffled_array
  else
    ind = rand(unshuffled_array.length)
    next = unshuffled_array[ind]
    unshuffled_array.delete_at(ind)
    shuffled_array.push(next)
    return recursive_shuffle unshuffled_array, shuffled_array
  end
end

puts(shuffle([1,2,3,4,5,6,7,8,9]))
