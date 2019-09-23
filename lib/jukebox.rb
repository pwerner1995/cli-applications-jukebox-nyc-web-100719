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
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def list(songs) 
  i = 0 
  while songs.length>i do 
    num = i+1 
    puts "#{num}. #{songs[i]}"
    i+=1
  end 
end 

def play(songs)
  puts "Please enter a song name or number: "
  input = gets.strip
  i = 0
  found = 0
  while songs.length>i do 
    num = "#{i+1}" 
    if (input == songs[i] or input == num) 
      puts "Playing #{songs[i]}"
      found=1
    else 
      p "Invalid input, please try again"
    end
    i +=1 
  end 
  if found == 0 
    puts "Invalid input, please try again"
  end 
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(argument)
  puts "Please enter a command:"
  input = gets.strip
  #p input
  if input == "exit"
    exit_jukebox
  end
  p input
  while input != "exit" do
    puts "Please enter a command:"
    input = gets.strip
    p input
    if input == list
      list(songs)
    elsif input == "play" 
      play(songs)
    elsif input == "help"
      help
    end 
  end 
end 

