def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(*input)
  if input[-1].is_a?(Integer)
  	num_times = input[-1]
  	input.delete_at(-1)
  	([input[0]]*num_times).join(" ")
  else
  	([input[0]]*2).join(" ")
  end
end

def start_of_word(string, num)
  string[0,num]
end

def first_word(string)
  string[0,string.index(' ')]
end

def titleize(string)
  small_words = %w(a an and or the in over)
  string.downcase!
  words = string.split(" ")
  new_string = ""
  words.each_with_index do |word, index|
    if (small_words.include?(word)) and index != 0
    	new_string = new_string + word.downcase + " "
    else
      new_string = new_string + word.capitalize + " "
    end
  end
  return new_string.strip
end

