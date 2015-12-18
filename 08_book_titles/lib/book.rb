class Book 

  def initialize
  end
  
  attr_reader :title
  
  def title=(new_title)
    words = new_title.split(" ")
    exceptions = %w{and or but so of on in the a an}
    
	words.each_with_index do |word, index|
	  if exceptions.include?(word) && index != 0
	    word = word.downcase!
	  else 
	    word = word.capitalize!
	  end
    end
    @title = words.join(" ").strip
  end

end

book = Book.new
book.title = "my title"

puts book.title