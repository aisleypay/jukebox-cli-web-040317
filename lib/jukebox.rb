require "pry"
songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello (name)
#   "Hi #{name}!"
# end
#
# puts "Enter your name: "
# users_name = gets.chomp
#
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp

  songs.each_with_index do |song, index|
    index += 1
    if user_input.to_i > 0 && user_input.to_i < 10
      if user_input.to_i == index
        puts "Playing #{song}"
      end
    elsif user_input == song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def list (songs)
  songs.each_with_index do |song, index|
    index += 1
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run (songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp

  until user_input == "exit" do
    case user_input
    when "list"
      list(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    when "play"
      play(songs)
      puts "Please enter a command:"
      user_input = gets.chomp
    when "help"
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    else
      help
      puts "Please enter a command:"
      user_input = gets.chomp
    end
  end

  exit_jukebox
end
