
class Board
  @@cell
  @@level
  @@kills
  @@key
  @@bomb

  def initialize
    @@cell = ["F", " ", " ", " ", " ", " ", "M", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "8", " ", " ", " "]
    @@level = 1
    @@key = "no"
    @@bomb = 3
    @@kills = 0
  end

  def self.puts_board
    puts " "
    puts "+---+---+---+=O=+---+---+---+---------+"
    puts "| #{@@cell[0]} | #{@@cell[1]} | #{@@cell[2]} | #{@@cell[3]} | #{@@cell[4]} | #{@@cell[5]} | #{@@cell[6]} | your on |"
    puts "|---+---+---+---+---+---+---| level: #{@@level}"
    puts "| #{@@cell[7]} | #{@@cell[8]} | #{@@cell[9]} | #{@@cell[10]} | #{@@cell[11]} | #{@@cell[12]} | #{@@cell[13]} |---------+"
    puts "|---+---+---+---+---+---+---| Key: #{@@key}"
    puts "| #{@@cell[14]} | #{@@cell[15]} | #{@@cell[16]} | #{@@cell[17]} | #{@@cell[18]} | #{@@cell[19]} | #{@@cell[20]} | Bomb: #{@@bomb}"
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

  def self.die_puts_board
    puts " "
    puts "+---+---+---+=O=+---+---+---+"
    puts "| #{@@cell[0]} | #{@@cell[1]} | #{@@cell[2]} | #{@@cell[3]} | #{@@cell[4]} | #{@@cell[5]} | #{@@cell[6]} | "
    puts "|---+---+---+---+---+---+---|"
    puts "| #{@@cell[7]} | #{@@cell[8]} | #{@@cell[9]} | #{@@cell[10]} | #{@@cell[11]} | #{@@cell[12]} | #{@@cell[13]} |"
    puts "|---+---+---+---+---+---+---|"
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
  end

  def self.update_board
    puts "| make your move |"
    puts "+----------------+"
    imput = gets.chomp.strip

    if imput == "w"
      if @@cell[@@cell.index("8")-7] != "X" && @@cell.index("8") > 6
        if @@cell[@@cell.index("8")-7] == "F"
          @@key = "yes"
        elsif @@cell[@@cell.index("8")-7] == "O"
          @@bomb += 1
        elsif @@cell[@@cell.index("8")-7] == "M" || @@cell[@@cell.index("8")-7] == "S"
          @@kills += 1
        elsif  @@cell[@@cell.index("8")-7] == "W"
          Board.die_puts_board
          CLI.exit(@@level, @@kills)
          puts "|Jumping on W kills you|"
          puts "+----------------------+"
          exit
        end

        @@cell[@@cell.index("8")-7] = "8"
        @@cell[@@cell.index("8")+7] = " "

      elsif @@cell[@@cell.index("8")-7] == "X" && @@bomb > 0
        @@bomb -= 1
        if @@cell[@@cell.index("8")-7] == "F"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")-7] = "8"
        @@cell[@@cell.index("8")+7] = " "
      end

    elsif imput == "s"
      if @@cell[@@cell.index("8")+7] != "X" && @@cell.index("8") < 42
        if @@cell[@@cell.index("8")+7] == "F"
          @@key = "yes"
        elsif @@cell[@@cell.index("8")+7] == "O"
          @@bomb += 1
        elsif @@cell[@@cell.index("8")+7] == "M" || @@cell[@@cell.index("8")+7] == "S"
          @@kills += 1

        elsif  @@cell[@@cell.index("8")+7] == "W"
          Board.die_puts_board
          CLI.exit(@@level, @@kills)
          puts "|Jumping on W kills you|"
          puts "+----------------------+"
          exit
        end

        @@cell[@@cell.index("8")+7] = "8"
        @@cell[@@cell.index("8")] = " "

      elsif @@cell[@@cell.index("8")+7] == "X" && @@bomb > 0
        @@bomb -= 1
        if @@cell[@@cell.index("8")+7] == "F"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")+7] = "8"
        @@cell[@@cell.index("8")] = " "
      end

    elsif imput == "a"
      if @@cell[@@cell.index("8")-1] != "X" && @@cell.index("8") != 0 && @@cell.index("8") != 7 && @@cell.index("8") != 14 && @@cell.index("8") != 21 && @@cell.index("8") != 28 && @@cell.index("8") != 35 && @@cell.index("8") != 42
        if @@cell[@@cell.index("8")-1] == "F"
          @@key = "yes"
        elsif @@cell[@@cell.index("8")-1] == "O"
          @@bomb += 1
        elsif @@cell[@@cell.index("8")-1] == "M" || @@cell[@@cell.index("8")-1] == "S"
          @@kills += 1

        elsif  @@cell[@@cell.index("8")-1] == "W"
          Board.die_puts_board
          CLI.exit(@@level, @@kills)
          puts "|Jumping on W kills you|"
          puts "+----------------------+"
          exit
        end

        @@cell[@@cell.index("8")-1] = "8"
        @@cell[@@cell.index("8")+1] = " "

      elsif @@cell[@@cell.index("8")-1] == "X" && @@bomb > 0
        @@bomb -= 1
        if @@cell[@@cell.index("8")-1] == "F"
          @@key = "yes"
        end

      @@cell[@@cell.index("8")-1] = "8"
      @@cell[@@cell.index("8")+1] = " "
      end

    elsif imput == "d"
      if @@cell[@@cell.index("8")+1] != "X" && @@cell.index("8") != 6 && @@cell.index("8") != 13 && @@cell.index("8") != 20 && @@cell.index("8") != 27 && @@cell.index("8") != 34 && @@cell.index("8") != 41 && @@cell.index("8") != 48
        if @@cell[@@cell.index("8")+1] == "F"
          @@key = "yes"
        elsif @@cell[@@cell.index("8")+1] == "O"
          @@bomb += 1
        elsif @@cell[@@cell.index("8")+1] == "M" || @@cell[@@cell.index("8")+1] == "S"
          @@kills += 1

        elsif  @@cell[@@cell.index("8")+1] == "W"
          Board.die_puts_board
          CLI.exit(@@level, @@kills)
          puts "|Jumping on W kills you|"
          puts "+----------------------+"
          exit
        end

        @@cell[@@cell.index("8")+1] = "8"
        @@cell[@@cell.index("8")] = " "

      elsif @@cell[@@cell.index("8")+1] == "X" && @@bomb > 0
         @@bomb -= 1
        if @@cell[@@cell.index("8")-1] == "F"
          @@key = "yes"
        end

        @@cell[@@cell.index("8")+1] = "8"
        @@cell[@@cell.index("8")] = " "
      end

    elsif imput == "restart"
      @@cell = ["F", " ", " ", " ", " ", " ", "M", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", "8", " ", " ", " "]
      @@level = 1
      @@key = "no"
      @@bomb = 3


    elsif imput == "exit"
      CLI.exit(@@level, @@kills)
      exit

    elsif imput == "c"
      if @@cell.index("8") == 3 && @@key == "yes"
        @@cell = [" ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", " "]

        @@key = "no"
        @@level += 1
        num = @@level

        while num > 0
          @@cell[rand(7..41)] = "X"
          num -=1
        end

        if @@level % 10 == 0
          @@cell[rand(0..48)] = "O"
        end

        if @@level == 30
          @@cell = ["O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O", "O"]
        end

        if @@level >= 15
          @@cell[rand(7..41)] = "M"
          @@cell[rand(7..41)] = "W"
          @@cell[rand(7..41)] = "S"
        elsif @@level >= 10
          @@cell[rand(7..41)] = "M"
          @@cell[rand(7..41)] = "W"
        else
          @@cell[rand(7..41)] = "M"
        end


        @@cell[rand(0..48)] = "F"

        if @@cell[45] != "F"
          @@cell[45] = "8"
        else
          @@cell[45] = "8"
          @@cell[44] = "F"
        end

        if @@level % 5 == 0
          @@bomb += 1
        end
      end
    end
    if imput == "w" || imput == "a" || imput == "s" || imput == "d"
      Board.ai_move
    end

    if @@cell.index("8") == nil
      Board.die_puts_board
      CLI.exit(@@level, @@kills)
      puts "| The monsters got you |"
      puts "+----------------------+"

      exit
    end
    Board.puts_board
  end

  def self.ai_move
    if @@cell.index("M") != nil

      @@move_M = rand(0..3)

      if @@move_M == 0
        if @@cell[@@cell.index("M")-7] != "F" && @@cell[@@cell.index("M")-7] != "X" && @@cell.index("M") > 6

          @@cell[@@cell.index("M")-7] = "M"
          @@cell[@@cell.index("M")+7] = " "
        end

      elsif @@move_M == 1
        if @@cell[@@cell.index("M")+7] != "F" && @@cell[@@cell.index("M")+7] != "X" && @@cell.index("M") < 42

          @@cell[@@cell.index("M")+7] = "M"
          @@cell[@@cell.index("M")] = " "
        end

      elsif @@move_M == 2
        if @@cell[@@cell.index("M")-1] != "F" && @@cell[@@cell.index("M")-1] != "X" && @@cell.index("M") != 0 && @@cell.index("M") != 7 && @@cell.index("M") != 14 && @@cell.index("M") != 21 && @@cell.index("M") != 28 && @@cell.index("M") != 35 && @@cell.index("M") != 42

          @@cell[@@cell.index("M")-1] = "M"
          @@cell[@@cell.index("M")+1] = " "
        end

      elsif @@move_M == 3
        if @@cell[@@cell.index("M")+1] != "F" &&@@cell[@@cell.index("M")+1] != "X" && @@cell.index("M") != 6 && @@cell.index("M") != 13 && @@cell.index("M") != 20 && @@cell.index("M") != 27 && @@cell.index("M") != 34 && @@cell.index("M") != 41 && @@cell.index("M") != 48

          @@cell[@@cell.index("M")+1] = "M"
          @@cell[@@cell.index("M")] = " "
        end
      end
    end
    #################################################
    if @@cell.index("W") != nil
      @@move_W = rand(0..3)

      if @@move_W == 0
        if @@cell[@@cell.index("W")-7] != "F" && @@cell[@@cell.index("W")-7] != "X" && @@cell.index("W") > 6

          @@cell[@@cell.index("W")-7] = "W"
          @@cell[@@cell.index("W")+7] = " "
        end

      elsif @@move_W == 1
        if @@cell[@@cell.index("W")+7] != "F" && @@cell[@@cell.index("W")+7] != "X" && @@cell.index("W") < 42

          @@cell[@@cell.index("W")+7] = "W"
          @@cell[@@cell.index("W")] = " "
        end

      elsif @@move_W == 2
        if @@cell[@@cell.index("W")-1] != "F" && @@cell[@@cell.index("W")-1] != "X" && @@cell.index("W") != 0 && @@cell.index("W") != 7 && @@cell.index("W") != 14 && @@cell.index("W") != 21 && @@cell.index("W") != 28 && @@cell.index("W") != 35 && @@cell.index("W") != 42

          @@cell[@@cell.index("W")-1] = "W"
          @@cell[@@cell.index("W")+1] = " "
        end

      elsif @@move_W == 3
        if @@cell[@@cell.index("W")+1] != "F" &&@@cell[@@cell.index("W")+1] != "X" && @@cell.index("W") != 6 && @@cell.index("W") != 13 && @@cell.index("W") != 20 && @@cell.index("W") != 27 && @@cell.index("W") != 34 && @@cell.index("W") != 41 && @@cell.index("W") != 48

          @@cell[@@cell.index("W")+1] = "W"
          @@cell[@@cell.index("W")] = " "
        end
      end
    end
############################################################
    if @@cell.index("S") != nil
      @@move_S = rand(0..7)

      if @@move_S == 0
        if @@cell[@@cell.index("S")-7] != "F" && @@cell.index("S") > 6

          @@cell[@@cell.index("S")-7] = "S"
          @@cell[@@cell.index("S")+7] = " "
        end

      elsif @@move_S == 1
        if @@cell[@@cell.index("S")+7] != "F" && @@cell.index("S") < 42

          @@cell[@@cell.index("S")+7] = "S"
          @@cell[@@cell.index("S")] = " "
        end

      elsif @@move_S == 2
        if @@cell[@@cell.index("S")-1] != "F" && @@cell.index("S") != 0 && @@cell.index("S") != 7 && @@cell.index("S") != 14 && @@cell.index("S") != 21 && @@cell.index("S") != 28 && @@cell.index("S") != 35 && @@cell.index("S") != 42

          @@cell[@@cell.index("S")-1] = "S"
          @@cell[@@cell.index("S")+1] = " "
        end

      elsif @@move_S == 3
        if @@cell[@@cell.index("S")+1] != "F" && @@cell.index("S") != 6 && @@cell.index("S") != 13 && @@cell.index("S") != 20 && @@cell.index("S") != 27 && @@cell.index("S") != 34 && @@cell.index("S") != 41 && @@cell.index("S") != 48

          @@cell[@@cell.index("S")+1] = "S"
          @@cell[@@cell.index("S")] = " "
        end

      elsif @@move_S == 4
        if @@cell[@@cell.index("S")-6] != "F" && @@cell.index("S") > 6 && @@cell.index("S") != 6 && @@cell.index("S") != 13 && @@cell.index("S") != 20 && @@cell.index("S") != 27 && @@cell.index("S") != 34 && @@cell.index("S") != 41 && @@cell.index("S") != 48

          @@cell[@@cell.index("S")-6] = "S"
          @@cell[@@cell.index("S")+6] = " "
        end

      elsif @@move_S == 5
        if @@cell[@@cell.index("S")-8] != "F" && @@cell.index("S") > 6 && @@cell.index("S") != 0 && @@cell.index("S") != 7 && @@cell.index("S") != 14 && @@cell.index("S") != 21 && @@cell.index("S") != 28 && @@cell.index("S") != 35 && @@cell.index("S") != 42

          @@cell[@@cell.index("S")-8] = "S"
          @@cell[@@cell.index("S")+8] = " "
        end

      elsif @@move_S == 6
        if @@cell[@@cell.index("S")+6] != "F" && @@cell.index("S") < 42 && @@cell.index("S") != 0 && @@cell.index("S") != 7 && @@cell.index("S") != 14 && @@cell.index("S") != 21 && @@cell.index("S") != 28 && @@cell.index("S") != 35 && @@cell.index("S") != 42

          @@cell[@@cell.index("S")+6] = "S"
          @@cell[@@cell.index("S")] = " "
        end

      elsif @@move_S == 7
        if @@cell[@@cell.index("S")+8] != "F" && @@cell.index("S") < 42 && @@cell.index("S") != 6 && @@cell.index("S") != 13 && @@cell.index("S") != 20 && @@cell.index("S") != 27 && @@cell.index("S") != 34 && @@cell.index("S") != 41 && @@cell.index("S") != 48

          @@cell[@@cell.index("S")+8] = "S"
          @@cell[@@cell.index("S")] = " "
        end
      end
    end
  end
end
