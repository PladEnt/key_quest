class CLI
  attr_accessor :user

  def initialize(user)
    @user = user
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
    puts "|The goel in thes game |"
    puts "|is to git the key and |"
    puts "|make in to the door to|"
    puts "|move on, the levels   |"
    puts "|git harder as you go. |"
    puts "|Lets see how fare you |"
    puts "|       can go!        |"
    puts "+----------------------+"
    puts "|use 'w/a/s/d' to wove |"
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
    puts "|      Thank You!      |"
    puts "          #{}"
    puts "+----------------------+"
    puts "| You made it to level |"
    puts "           #{level}"
    puts "+----------------------+"
    puts "|   Exiting... Done!   |"
    puts "+----------------------+"
  end
end
