module TicTacToe 

	def get_input(player)
		players = 0
		if player
			players = "X"
		else
			players = "O"
		end
		puts "Enter a place(0-8) to put your #{players}"
		$stdin.gets.chomp.to_i
	end

	def logic(board, spot, player)
		if board[spot] == " "
			if player
				board[spot] = "X"
			else
				board[spot] = "O"
			end
		end
		!player
	end

	def render(board)
		puts """

			#{board[0]} | #{board[1]} | #{board[2]}
			#{board[3]} | #{board[4]} | #{board[5]}
			#{board[6]} | #{board[7]} | #{board[8]}

		"""
	end

end

game = true
player = true
spot = 0

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

while game

		spot = TicTacToe::get_input(player)
		TicTacToe::logic(board, spot, player)
		TicTacToe::render(board)

end