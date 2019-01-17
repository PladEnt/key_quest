class monster_ai
  @@move

  def ai_move
    @@move = rand(0..3)

    if @@move == 0
      if @@cell[@@cell.index("M")-1] != "F" && @@cell[@@cell.index("M")-7] != "X" && @@cell.index("M") > 6

        @@cell[@@cell.index("M")-7] = "M"
        @@cell[@@cell.index("M")+7] = " "
      end

    elsif @@move == 1
      if @@cell[@@cell.index("M")-1] != "F" && @@cell[@@cell.index("M")+7] != "X" && @@cell.index("M") < 42

        @@cell[@@cell.index("M")+7] = "M"
        @@cell[@@cell.index("M")] = " "
      end

    elsif @@move == 2
      if @@cell[@@cell.index("M")-1] != "F" && @@cell[@@cell.index("M")-1] != "X" && @@cell.index("M") != 0 && @@cell.index("M") != 7 && @@cell.index("M") != 14 && @@cell.index("M") != 21 && @@cell.index("M") != 28 && @@cell.index("M") != 35 && @@cell.index("M") != 42

        @@cell[@@cell.index("M")-1] = "M"
        @@cell[@@cell.index("M")+1] = " "
      end

    elsif @@move == 3
      if @@cell[@@cell.index("M")-1] != "F" &&@@cell[@@cell.index("M")+1] != "X" && @@cell.index("M") != 6 && @@cell.index("M") != 13 && @@cell.index("M") != 20 && @@cell.index("M") != 27 && @@cell.index("M") != 34 && @@cell.index("M") != 41 && @@cell.index("M") != 48

        @@cell[@@cell.index("M")+1] = "M"
        @@cell[@@cell.index("M")] = " "
      end
  end
end
