require './lib/term.rb'

@compendium = []

def main_menu
  loop do
  puts "\npress a to add a new word"
  puts "press x to exit\n"
  choice = gets.chomp
  if choice == "a"
    add_word
  elsif choice == "x"
    exit
  end
  end
end

def add_word
  puts "enter a word"
  word = gets.chomp
  puts "what's that mean?"
  definition = gets.chomp
  @compendium << Term.new(word, definition)
end




main_menu
