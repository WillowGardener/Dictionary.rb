require './lib/term.rb'

@comp_hash = {}
@compendium = []


def main_menu
  loop do
    puts "\npress a to add a new word to the dictionary"
    puts "press s to show the dictionary"
    puts "press d to demolish an entry"
    puts "press e to edit an entry"
    puts "press x to exit\n"
    choice = gets.chomp
    if choice == "a"
      add_term
    elsif choice == "x"
      exit
    elsif choice == "e"
      edit_term
    elsif choice == "s"
      show_terms
    elsif choice == "d"
      delete_term
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
  @comp_hash[w]=d
end

def show_terms
  puts "\n"
  puts @comp_hash
end

def delete_term
  puts "which word must meet its untimely demise?"
  @comp_hash.each_key do |word|
    puts word
  end
  doomed = gets.chomp
  @comp_hash.each_key do |word|
    if word == doomed
      @comp_hash.delete(word)
    end
  end
end

def edit_term
  puts "\nwhich term must change?\n"
  @comp_hash.each_key do |word|
    puts word
  end
  term_choice = gets.chomp

  if @comp_hash.include?(term_choice) == false
    puts "\nThat word isn't in the dictionary. Try again\n\n"
    edit_term
  end

  puts "enter the new definition for this word"
  new_definition = gets.chomp
  @comp_hash[term_choice] = new_definition
end

main_menu
