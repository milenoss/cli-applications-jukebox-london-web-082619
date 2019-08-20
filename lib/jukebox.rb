# Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip 

# puts say_hello(users_name)
require 'pry'
def help
  puts "I accept the following commands:"
   puts " - help : displays this help message"
    puts " - list : displays a list of songs you can play"
      puts " - play : lets you choose a song to play"
        puts " - exit : exits this program"
        
end


def list(songs)
  songs.each_with_index{|s| s + 1 }
  puts "Great Choice"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip 
 binding.pry
  if user_input.to_i == songs 
    puts "Playing #{songs}"
  
  else
    puts "Invalid input, please try again."
 end
end

def exit_jukebox()
  puts "Goodbye"
end

def runner 
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == list 
   list
  elsif user_input.to_i == play 
    play
  elsif user_input.to_i == help 
    help
  else 
    exit_jukebox
  
    end
end
