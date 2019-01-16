
class Board
  attr_accessor :boar, :door

  def initialize
    @board = [" ", " ", " ", "!", " ", " ", " ", "8", " "]
    @door = "_"
  end

  def puts_board
    puts "+---+=#{@door}=+---+"
    puts "| #{@board[1]} | #{@board[2]} | #{@board[3]} |"
    puts "|---+---+---|"
    puts "| #{@board[4]} | #{@board[5]} | #{@board[6]} |"
    puts "|---+---+---|"
    puts "| #{@board[7]} | #{@board[8]} | #{@board[9]} |"
    puts "+---+-=-+---+"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "|"

  end
end
