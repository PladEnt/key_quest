
class Board
  @@cell
  @@level
  @@key

  def initialize
    @@cell = ["!", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "8", " ", " ", " "]
    @@level = 1
    @@key = "no"
  end

  def self.puts_board
    puts " "
    puts "+---+---+---+=O=+---+---+---+---------+"
    puts "| #{@@cell[0]} | #{@@cell[1]} | #{@@cell[2]} | #{@@cell[3]} | #{@@cell[4]} | #{@@cell[5]} | #{@@cell[6]} | your on |"
    puts "|---+---+---+---+---+---+---| level: #{@@level}"
    puts "| #{@@cell[7]} | #{@@cell[8]} | #{@@cell[9]} | #{@@cell[10]} | #{@@cell[11]} | #{@@cell[12]} | #{@@cell[13]} |---------+"
    puts "|---+---+---+---+---+---+---| Key: #{@@key}"
    puts "| #{@@cell[14]} | #{@@cell[15]} | #{@@cell[16]} | #{@@cell[17]} | #{@@cell[18]} | #{@@cell[19]} | #{@@cell[20]} |"
    puts "+---+---+---+---+---+---+---+"
    puts "| #{@@cell[21]} | #{@@cell[22]} | #{@@cell[23]} | #{@@cell[24]} | #{@@cell[25]} | #{@@cell[26]} | #{@@cell[27]} |"
    puts "+---+---+---+---+---+---+---+"
    puts "| #{@@cell[28]} | #{@@cell[29]} | #{@@cell[30]} | #{@@cell[31]} | #{@@cell[32]} | #{@@cell[33]} | #{@@cell[34]} |"
    puts "+---+---+---+---+---+---+---+"
    puts "| #{@@cell[35]} | #{@@cell[36]} | #{@@cell[37]} | #{@@cell[38]} | #{@@cell[39]} | #{@@cell[40]} | #{@@cell[41]} |"
    puts "+---+---+---+---+---+---+---+"
    puts "| #{@@cell[42]} | #{@@cell[43]} | #{@@cell[44]} | #{@@cell[45]} | #{@@cell[46]} | #{@@cell[47]} | #{@@cell[48]} |"
    puts "+---+---+---+-=-+---+---+---+"
    Board.update_board
  end

  def self.update_board
    puts "| make your move |"
    puts "+----------------+"
    imput = gets.chomp.strip

    if imput == "w"
      if @@cell.index("8") > 6
        if @@cell[@@cell.index("8")-7] == "!"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")-7] = "8"
        @@cell[@@cell.index("8")+7] = " "
      end

    elsif imput == "s"
      if @@cell.index("8") < 42
        if @@cell[@@cell.index("8")+7] == "!"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")+7] = "8"
        @@cell[@@cell.index("8")] = " "
      end

    elsif imput == "a"
      if @@cell.index("8") != 0 && @@cell.index("8") != 7 && @@cell.index("8") != 14 && @@cell.index("8") != 21 && @@cell.index("8") != 28 && @@cell.index("8") != 35 && @@cell.index("8") != 42
        if @@cell[@@cell.index("8")-1] == "!"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")-1] = "8"
        @@cell[@@cell.index("8")+1] = " "
      end

    elsif imput == "d"
      if @@cell.index("8") != 6 && @@cell.index("8") != 13 && @@cell.index("8") != 20 && @@cell.index("8") != 27 && @@cell.index("8") != 34 && @@cell.index("8") != 41 && @@cell.index("8") != 48
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
      if @@cell.index("8") == 3 && @@key == "yes"
        @@cell = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "]
        @@cell[rand(0..48)] = "!"
        if @@cell[45] != "!"
          @@cell[45] = "8"
        else
          @@cell[45] = "8"
          @@cell[44] = "!"
        end
        @@key = "no"
        @@level += 1
      end
    end
    Board.puts_board
  end
end
