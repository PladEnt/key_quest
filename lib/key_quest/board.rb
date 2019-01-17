
class Board
  @@cell
  @@level
  @@key

  def initialize
    @@cell = [" ", " ", " ", "!", " ", " ", " ", "8", " "]
    @@level = 1
    @@key = "no"
  end

  def self.puts_board
    puts " "
    puts "+---+=0=+---+---------+"
    puts "| #{@@cell[0]} | #{@@cell[1]} | #{@@cell[2]} | your on |"
    puts "|---+---+---| level: #{@@level}"
    puts "| #{@@cell[3]} | #{@@cell[4]} | #{@@cell[5]} +---------+"
    puts "|---+---+---| Key: #{@@key}"
    puts "| #{@@cell[6]} | #{@@cell[7]} | #{@@cell[8]} |"
    puts "+---+-=-+---+----+"
    Board.update_board
  end

  def self.update_board
    puts "| make your move |"
    puts "+----------------+"
    imput = gets.chomp.strip

    if imput == "w"
      if @@cell.index("8") > 2
        if @@cell[@@cell.index("8")-3] == "!"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")-3] = "8"
        @@cell[@@cell.index("8")+3] = " "
      end

    elsif imput == "s"
      if @@cell.index("8") < 6
        if @@cell[@@cell.index("8")+3] == "!"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")+3] = "8"
        @@cell[@@cell.index("8")] = " "
      end

    elsif imput == "a"
      if @@cell.index("8") != 0 && @@cell.index("8") != 3 && @@cell.index("8") != 6
        if @@cell[@@cell.index("8")-1] == "!"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")-1] = "8"
        @@cell[@@cell.index("8")+1] = " "
      end

    elsif imput == "d"
      if @@cell.index("8") != 2 && @@cell.index("8") != 5 && @@cell.index("8") != 8
        if @@cell[@@cell.index("8")+1] == "!"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")+1] = "8"
        @@cell[@@cell.index("8")] = " "
      end

    elsif imput == "exit"
      num = @@level
      CLI.exit(num)
      exit

    elsif imput == "c"
      if @@cell.index("8") == 1 && @@key == "yes"
        @@cell = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
        @@cell[rand(1..8)] = "!"
        if @@cell[7] != "!"
          @@cell[7] = "8"
        else
          @@cell[7] = "8"
          @@cell[6] = "!"
        end
        @@key = "no"
        @@level += 1
      end
    end
    Board.puts_board
  end
end
