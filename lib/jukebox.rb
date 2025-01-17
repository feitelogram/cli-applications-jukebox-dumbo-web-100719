require "pry"

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

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

def list (songs)
  songs.each_with_index do |item, index| 
    puts "#{index + 1}" + ". " + item
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  response = gets.strip
  if response.to_i >= 1 && response.to_i <= songs.length
    puts "Playing #{songs[response.to_i-1]}"
  elsif songs.include?(response)
    puts "Playing #{songs.find{|song| song == response}}"
  else puts "Invalid input, please try again"
    end
 end
 
 def exit_jukebox
   puts "Goodbye"
 end 
 
 def run(songs)
   puts "Please enter a command:"
   response = gets.strip
   case response
      when "exit"
        return exit_jukebox
      end
   while !!(response == exit)
    case response
      when "list"
        list(songs)
      when "help"
        help
      when "play"
        play(songs)
  end
 end
 end