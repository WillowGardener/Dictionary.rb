class Term
  def initialize(word, definition)
    @word = word
    @definition = definition
  end

  def show_word
    puts @word + ":"
    puts @definition
  end

end
