def fibs(num)
  arr = []
  num.times do |time|
    case arr.length
    when 0
      arr << 0
    when 1
      arr << 1
    else
      arr << (arr[time-1] + arr[time-2])
    end
  end
  arr
end

p fibs(11)

def fib_rec(spot, arr=[], original_spot=spot)
  if spot == 1
    num = 0
  elsif spot == 2
    arr[spot-2] = 0 unless arr[spot-2]
    num = 1
  else
    num = fib_rec(spot-1, arr, original_spot) + fib_rec(spot-2, arr, original_spot)
  end
  arr[spot-1] = num unless arr[spot-1] 
  return arr.length == original_spot ? arr : num
end

p fib_rec(8)