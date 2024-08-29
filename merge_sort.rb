def merge(arr)
  if arr.length == 1
    return arr
  else
    # Left array must always be the shorter array~
    left_point = merge(arr[0..((arr.length/2)-1)])
    right_point = merge(arr[(arr.length/2)..])

    # if length of return elements is 1, compare to each other without looping and add to correct position in return array
    # if left_point.length == 1 && right_point.length == 1
    #   if left_point[0] < right_point[0]
    #     arr[0] = left_point[0]
    #     arr[1] = right_point[0]
    #   else
    #     arr[0] = right_point[0]
    #     arr[1] = left_point[0]
    #   end
    #   return arr
    # else
    final_arr_length = left_point.length + right_point.length
    p "Arr"
    p arr
    p "Points"
    p left_point
    p right_point
    right_val = right_point.shift
    left_val = left_point.shift
    new_arr = []
    p final_arr_length
    # Use while loop to continue comparing values until return array has length of left_point + right_point
    while new_arr.length != final_arr_length
      # p "ARRRRRR"
      # p new_arr.length
      if left_val.nil? && !right_val.nil?
        new_arr = new_arr + right_point
        break
      elsif right_val.nil? && !left_val.nil?
        new_arr = new_arr + left_point
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
      p "NEW ARRRR!"
      p new_arr
    end
    # end
    
    return arr













    # left_point = merge(arr[0..((arr.length/2)-1)])
    # right_point = merge(arr[(arr.length/2)..])
    # if left_point.length > 1
    #   if right_point.length > 1
    #     puts "UHOH! CAUGHT ME!"
    #   else
    #     while !left_point.empty?
    #       first_elem_left_point = left_point.shift
    #       if right_point < first_elem_left_point
    #         arr = right_point + first_elem_left_point + left_point
    #       else
    #         arr << first_elem_left_point
    #       end
    #     end
    #   end

    # elsif right_point.length > 1
    #   left_point = left_point[0]
    #   while !right_point.empty?
    #     first_elem_right_point = right_point.shift
    #     if left_point < first_elem_right_point
    #       arr = left_point + first_elem_right_point + right_point
    #     else
    #       arr << first_elem_right_point
    #     end
    #   end
    # else

    # end
    
  end
end

p merge([0,2,1,3,4,5])