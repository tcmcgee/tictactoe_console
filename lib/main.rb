require 'bundler/setup'
require "rubygems"
require 'tic_tac_toe'
require_relative "console_ui"

game = TicTacToe::Game.new(ConsoleUi.new)
game.start
