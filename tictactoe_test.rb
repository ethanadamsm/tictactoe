require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'tictactoe'

class TicTacToeTest < MiniTest::Test
	def setup
		@m = Class.new do
			include TicTacToe	
		end.new
	end

	def test_logic
		assert_equal false, @m.logic([" "], 0, true) 
		assert_equal true, @m.logic([" "], 0, false) 
	end

end