# Add your code here
# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.strip 

# puts say_hello(users_name)

def help_method
  puts "I accept the following commands:"
   puts " - help : displays this help message"
    puts " - list : displays a list of songs you can play"
      puts " - play: lets you choose a song to play"
        puts " - exit : exits this program"
end


def list_method(songs)
  songs.each_with_index{|s| s + 1 }
  puts "Great Choice"
end

def play_method(songs)
  puts "Please enter a song name or number :"
  user_input = gets.strip 
  if user_input == songs 
    puts "Playing #{songs}"
  else
    puts "Invalid input, please try again".
  end
end

def exit_method
  puts "Goodbye"
end

def runner 
  puts "Please enter a command:"
  user_input = gets.strip
  if user_input == list 
   list_method
  elsif user_input == play 
    play_method
  elsif user_input == help 
    help_method
  else 
    exit_method
  
    end
  end

