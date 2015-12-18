$vowels = %w(a e i o u)
$phonemes = %w(qu)

def translate(string)
  pig_string = ""
  words = string.downcase.split(" ")
  words.each do |word|
    letters = word.split("")
	if $vowels.include?(letters.first) # Deal with vowel words
	  pig_string = pig_string + word + "ay "
	else # Deal with consonant words
      while !($vowels.include?(letters.first)) do # Deal with multiple consonants
        if $phonemes.include?(letters[0..1].join) # Check for phonemes
	      letters = letters.push(letters.shift(2))
	    elsif (letters.first == "y") && !($vowels.include?(letters[1])) # Check for 'y' as vowel
	      break
        else
          letters = letters.push(letters.shift)
        end
      end
      pig_string = pig_string + letters.join + "ay "
    end
  end
  return pig_string.strip
end

