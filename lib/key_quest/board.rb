
class Board
  @@cell

  def initialize
    @@cell = [" ", " ", " ", "!", " ", " ", " ", "8", " "]

  end

  def self.puts_board
    puts " "
    puts "+---+=0=+---+"
    puts "| #{@@cell[0]} | #{@@cell[1]} | #{@@cell[2]} |"
    puts "|---+---+---|"
    puts "| #{@@cell[3]} | #{@@cell[4]} | #{@@cell[5]} |"
    puts "|---+---+---|"
    puts "| #{@@cell[6]} | #{@@cell[7]} | #{@@cell[8]} |"
    puts "+---+-=-+---+"
  end

  def self.update_board
    puts "|make you move|"
    puts "+-------------+"
    imput = gets.chomp.strip

    if imput == "w"

    elsif imput == "s"

    elsif imput == "a"

    elsif imput == "d"

    end
  end
end
