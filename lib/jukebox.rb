require 'pry'
require'pp'
# Add your code here
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

def help 
puts "I accept the following commands:"
puts  "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"

end

def list(songs)
  index = 0
  while index<songs.length
  puts "#{index+1}. #{songs[index]}"
  index+=1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  song_num_array = (1..9).to_a
    if song_num_array.index(input.to_i) != nil
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  puts "Please enter a command:"
  input = gets.strip
  
if input == "exit"
  exit_jukebox
elsif input == "list"
 list(songs)
elsif input == "play"
  play(songs)
elsif input == "help"
  help

end
end
