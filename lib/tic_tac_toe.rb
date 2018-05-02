def display_board(board)
  puts " #{board(0)} | #{board(1)} | #{board(2)} "
  puts "-----------"
  puts " #{board(3)} | #{board(4)} | #{board(5)} "
  puts "-----------"
  puts " #{board(6)} | #{board(7)} | #{board(8)} "
end

WIN_COMBINATIONS = [
  
]

      expect(WIN_COMBINATIONS).to include_array([0,1,2])
      expect(WIN_COMBINATIONS).to include_array([3,4,5])
      expect(WIN_COMBINATIONS).to include_array([6,7,8])
      expect(WIN_COMBINATIONS).to include_array([0,3,6])
      expect(WIN_COMBINATIONS).to include_array([1,4,7])
      expect(WIN_COMBINATIONS).to include_array([2,5,8])
      expect(WIN_COMBINATIONS).to include_array([0,4,8])
      expect(WIN_COMBINATIONS).to include_array([6,4,2])