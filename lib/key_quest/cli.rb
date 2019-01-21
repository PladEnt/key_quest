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
    puts "| Use 'w' to open the  |"
    puts "|         door.        |"
    puts "+----------------------+"
    puts "| 'X's are walls, you  |"
    puts "| can't go though them |"
    puts "+----------------------+"
    puts "|  If you have a bomb  |"
    puts "|  you can destoy the  |"
    puts "|  wells with 'c', you |"
    puts "|  get a bomb every 5  |"
    puts "|        levels        |"
    puts "+----------------------+"
    puts "|Don't let M, W, S get |"
    puts "|you there the monsters|"
    puts "+----------------------+"

    Board.new
    Board.puts_board
  end

  def self.exit(level, kills)
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
    puts "|      You killed      |"
    puts "       #{kills} monsters"
    puts "+----------------------+"

  end
end
