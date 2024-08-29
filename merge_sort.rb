def merge(arr)
  if arr.length == 1
    return arr
  else
    # Left array must always be the shorter array~
    left_point = merge(arr[0..((arr.length/2)-1)])
    right_point = merge(arr[(arr.length/2)..])
    final_arr_length = left_point.length + right_point.length
    right_val = right_point.shift
    left_val = left_point.shift
    new_arr = []
    # Use while loop to continue comparing values until return array has length of left_point + right_point
    while new_arr.length != final_arr_length
      if left_val.nil? && !right_val.nil?
        new_arr = new_arr + [right_val] + right_point
        break
      elsif right_val.nil? && !left_val.nil?
        new_arr = new_arr + [left_val] + left_point
        break
      end
      if left_val < right_val
        new_arr << left_val
        left_val = left_point.shift
      elsif right_val < left_val
        new_arr << right_val
        right_val = right_point.shift
      else
        new_arr << left_val
        new_arr << right_val
        left_val = left_point.shift
        right_val = right_point.shift
      end
    end
    return new_arr
  end
end

p merge([105, 79, 100, 110, 100, 200])