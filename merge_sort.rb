def merge(arr)
  if arr.length == 1
    return arr
  else
    left_point = merge(arr[0..((arr.length/2)-1)])
    right_point = merge(arr[(arr.length/2)..])
    if left_point.length > 1
      if right_point.length > 1
      else
      end

    elsif right_point.length > 1
      while !right_point.empty?
        first_elem_right_point = right_point.shift
        if left_point < first_elem_right_point
          arr = left_point + first_elem_right_point + right_point
        else
          arr << first_elem_right_point
        end
      end
    else

    end
    
  end
  arr
end

p merge([0,2,1,3,4,5])