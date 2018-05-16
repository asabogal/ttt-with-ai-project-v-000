module Players

  class Computer < Player

    def move(board)
      move = nil

      if board.turn_count == 0
        move = "5"

      elsif board.count == 1 && !board.taken?(5)
        move = "5"

      elsif board.count == 1 && board.taken?(5)
        move = [1, 3, 7, 9].detect {|i| !board.taken?(i)}.to_s

      elsif board.count >= 2
        move = board.cells.detect {|i| !board.taken?(i)}.to_s
      end
    end

  end
end
