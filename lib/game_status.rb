# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS do | sub_array|
    sub_array do |element|
        element.each do
          if element[0] && element[1] && element[2] == "X"
            return element
        elsif element[0] && element[1] && element[2] == "O"
          return element
        else
          return false
        end
      end
    end
  end
end
