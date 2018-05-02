def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def input_to_index(next_move)
  next_move.to_i - 1
end

def move(board, index, value)
  board[index] = value
end

def position_taken?(board, index)
  !(board[index] == nil || board[index] == " " || board[index] == "")
end

def valid_move?(board, index)
  index >= 0 && index < 9 && !position_taken?(board, index)
end

def turn(board)
  puts "Enter 1-9:"
  next_move = gets.strip
  index = input_to_index(next_move)
  
  if valid_move?(board, index)
    move(board, index, current_player(board))
  else
    turn(board)
  end
end

def turn_count(board)
  count = 0
  board.each_with_index do |_, index|
    if position_taken?(board, index)
      count += 1
    end
  end
  count
end

def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  end
  "O"
end

def won?(board)
  
end

def full?(board)
  board.all?{|grid|}
end