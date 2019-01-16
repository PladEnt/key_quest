class CLI
  attr_accessor :user

  def initialize(user)
    @user = user
  end

  def welcome
    puts "+----------------------+"
    puts "| WELCOME TO KEY QUEST |"
    puts "+----------------------+"
    puts "|the goel in thes game |"
    puts "|is to git the key and |"
    puts "|make in to the door to|"
    puts "|move on, the levels   |"
    puts "|git harder as you go. |"
    puts "|lets see how fare you |"
    puts "|       can go!        |"
    puts "+----------------------+"
    puts "|use 'w/a/s/d' to wove |"
    puts "+----------------------+"

    Board.new
    Board.puts_board
    Board.update_board
  end
end
