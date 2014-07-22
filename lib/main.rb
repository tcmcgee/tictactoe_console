require 'tic_tac_toe'

ui = Console_ui.new
size = ui.get_board_size
if size != 16
difficulty = ui.get_difficulty
if difficulty == 1
	computer = Computer.new
else
	computer = Recursive_computer.new
end
else
	computer = Computer.new
end

game = Game.new(TicTacToe.new(size),computer,ui)

game.start
