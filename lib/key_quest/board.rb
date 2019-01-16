
class Board
  attr_accessor :board

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  def puts_board
    puts "+---+= =+---+"
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
