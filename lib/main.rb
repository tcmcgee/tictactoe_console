require 'bundler/setup'
require "rubygems"
require 'tic_tac_toe'
require_relative "console_ui"

ui = ConsoleUi.new
size = ui.get_board_size
if size != 16
difficulty = ui.get_difficulty
if difficulty == 1
	computer = TicTacToe::Computer.new
else
	computer = TicTacToe::Recursive_computer.new
end
else
	computer = TicTacToe::Computer.new
end

game = TicTacToe::Game.new(TicTacToe::Board.new(size),computer,ui)

game.start
