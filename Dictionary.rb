require './lib/term.rb'

@compendium = []

def main_menu
  loop do
  puts "\npress a to add a new word"
  puts "press d to display the dictionary (does the d stand for display or for dictionary, though?)"
  puts "press x to exit\n"
  choice = gets.chomp
  if choice == "a"
    add_word
  elsif choice == "x"
    exit
  elsif choice == "d"
    show_word
  end
  end
end

def add_word
  puts "enter a word"
  w = gets.chomp
  puts "what's that mean?"
  d = gets.chomp
  @compendium << Term.new(w, d)
end

def show_word
  @compendium.each do |word|
    puts "\n"
    word.show_word
    puts "\n"
  end
end




main_menu
