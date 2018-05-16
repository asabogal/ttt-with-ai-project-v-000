module Players

  class Computer < Player

    def move(board)
      move = nil

      if board.turn_count == 0
        move = "5"

      elsif board.count == 1 && !board.taken?(5)
        move = "5"

      end

    end

  end
end
