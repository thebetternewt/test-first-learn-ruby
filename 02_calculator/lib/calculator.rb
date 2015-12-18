def add (*nums)
  nums.inject(0) {|total, num| total + num }
end

def subtract (*nums)
  nums.inject(nums[0]) {|total, num| total - num } + nums[0]
end

def sum (nums)
  nums.inject(0) {|total, num| total + num}
  
end

def multiply (*nums)
  if nums.length > 1
    nums.inject {|total, num| total * num}
  elsif nums.length == 1
    nums[0]
  else
    0
  end
end

def power (num, power)
  num**power
end

def factorial(num)
	if num > 0
	  total = num
	  while num > 1
	    total = total * (num - 1)
	    num = num - 1
	  end
	  return total
	elsif num == 0
	  1
    else
      puts "Factorials of negative numbers are undefined."
      puts "Please try again with a positive number."
	end
end
