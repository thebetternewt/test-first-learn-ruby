def reverser
  new_string = ""
  words = yield.split(" ")
  words.each do |word|
    word = word.reverse
    new_string = new_string + word + " "
  end
  return new_string.strip
end

def adder(num=1)
  yield + num
end

def repeater(num_times=1)
  num_times.times {yield}
end