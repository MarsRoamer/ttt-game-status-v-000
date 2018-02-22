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

def won?(array)
  WIN_COMBINATIONS.each do |winner_set|
    if array[winner_set[0]] == array[winner_set[1]] &&
       array[winner_set[1]] == array[winner_set[2]] &&
       position_taken?(array, winner_set[0])
       puts "somebody won!"
       return true
       return winner_set
    end
  end
end
