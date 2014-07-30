require './lib/term.rb'

@compendium = []

def main_menu
  loop do
  puts "\npress a to add a new word to the dictionary"
  puts "press s to show the dictionary"
  puts "press d to demolish an entry"
  puts "press x to exit\n"
  choice = gets.chomp
  if choice == "a"
    add_term
  elsif choice == "x"
    exit
  elsif choice == "s"
    show_term
  elsif choice == "d"
    delete_word
  else
    puts "not a valid option, buckaroo"
  end
  end
end

def add_term
  puts "enter a word"
  w = gets.chomp
  puts "what's that mean?"
  d = gets.chomp
  @compendium << Term.new(w, d)
end

def show_term
  @compendium.each do |word|
    puts "\n"
    word.show_term
    puts "\n"
  end
end

def delete_word
  puts "which word must meet its untimely demise?"
  @compendium.each do |word|
    puts word.just_word
  end
  doomed = gets.chomp
  @compendium.each do |word|
    if word == doomed
    word.delete
  end
end

end




main_menu
