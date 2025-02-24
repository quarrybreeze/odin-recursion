def merge(left,right) #assumes the list are already sorted
  result = []
  i = 0
  j = 0

  while (i < left.length && j < right.length)
    if (left[i] < right[j])
      result << left[i]
      i += 1
    else
      result << right[j]
      j += 1
    end
    
 
  end

  for i in i..left.length-1
    result << left[i]
    i += 1
  end

  for j in j..right.length-1
    result << right[j]
    j += 1
  end

  result
end


def merge_sort(array_input)
  if array_input.length <= 1
    return array_input
  end

    midpoint = array_input.length/2
    left_half = array_input[0..midpoint-1]
    left_half = merge_sort(left_half)  #assign the results back to left half so it can pass through to next iteration
    right_half = array_input[midpoint..array_input.length]
    right_half = merge_sort(right_half) #assign the results back to right half so it can pass through to next iteration
    merge(left_half,right_half)
end

p merge_sort([3,2,1,13,8,5,0,1])
