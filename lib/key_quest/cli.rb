class CLI
  attr_accessor :user
  @@user

  def initialize(user)
    @user = user
    @@user = user
  end

  def welcome
    puts '           () '
    puts '   _       \/       _ '
    puts '0_/ \------/\------/ \_0 '
    puts '   /\/\/\/\/\/\/\/\/\ '
    puts '  /\/\/\/\/\/\/\/\/\/\ '
    puts ' /\/\/\/\/\/\/\/\/\/\/\ '
    puts "+----------------------+"
    puts "| WELCOME TO KEY QUEST |"
    puts "+----------------------+"
    puts "|The goel in this game |"
    puts "|is to get the key and |"
    puts "|make in to the door to|"
    puts "|move on, the levels   |"
    puts "|get harder as you go. |"
    puts "|Lets see how far you  |"
    puts "|       can go!        |"
    puts "+----------------------+"
    puts "|Use 'w/a/s/d' to move |"
    puts "+----------------------+"
    puts "|Get to the 'F' that is|"
    puts "|       the key.       |"
    puts "+----------------------+"
    puts "| Use 'c' to open the  |"
    puts "|         door.        |"
    puts "+----------------------+"
    puts "| 'X's are walls, you  |"
    puts "| can't go though thim |"
    puts "+----------------------+"
    puts "|  If you have a bomb  |"
    puts "| you can go though a  |"
    puts "| well, you'll get one |"
    puts "|   every 5 lenels.    |"
    puts "+----------------------+"

    Board.new
    Board.puts_board
  end

  def self.exit(level)
    puts '           () '
    puts '   _       \/       _ '
    puts '0_/ \------/\------/ \_0 '
    puts '   /\/\/\/\/\/\/\/\/\ '
    puts '  /\/\/\/\/\/\/\/\/\/\ '
    puts ' /\/\/\/\/\/\/\/\/\/\/\ '
    puts "+----------------------+"
    puts "|Thank You for playing |"
    puts "         #{@@user}!"
    puts "+----------------------+"
    puts "| You made it to level |"
    puts "           #{level}"
    puts "+----------------------+"
    puts "|   Exiting... Done!   |"
    puts "+----------------------+"
  end
end
