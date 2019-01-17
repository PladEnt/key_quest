
class Board
  @@cell
  @@level

  def initialize
    @@cell = [" ", " ", " ", "!", " ", " ", " ", "8", " "]
    @@level = 1
  end

  def self.puts_board
    puts " "
    puts "+---+=0=+---+---------+"
    puts "| #{@@cell[0]} | #{@@cell[1]} | #{@@cell[2]} | your on |"
    puts "|---+---+---|  level  |"
    puts "| #{@@cell[3]} | #{@@cell[4]} | #{@@cell[5]} +---------+"
    puts "|---+---+---|    #{@@level}"
    puts "| #{@@cell[6]} | #{@@cell[7]} | #{@@cell[8]} |"
    puts "+---+-=-+---+----+"
    Board.update_board
  end

  def self.update_board
    puts "| make your move |"
    puts "+----------------+"
    imput = gets.chomp.strip

    if imput == "w"
      Board.puts_board

    elsif imput == "s"
      Board.puts_board

    elsif imput == "a"
      Board.puts_board

    elsif imput == "d"
      Board.puts_board

    elsif imput == "exit"
      num = @@level
      CLI.exit(num)
      exit

    else
      Board.puts_board

    end
  end
end
