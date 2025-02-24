def fibs(n)
  fibs_array = [0,1]
  for i in 2..(n-1)
    fibs_array[i] = fibs_array[i-1] + fibs_array[i-2]
  end
  fibs_array
end

def fibs_recursive(n, result = [0,1])
  if n <= 2
    return result
  end

  result << result[-2] + result[-1]
  fibs_recursive(n-1, result)
end


p fibs(8)

p fibs_recursive(8)