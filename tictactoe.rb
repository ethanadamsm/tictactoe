game = true
player = "X"
spot = 0

def get_input(player)
	puts "Enter a place(0-8) to put your #{player}"
	spot = $stdin.gets.chomp
end

def logic()
	
end

def render()
	
end

while game

	get_input(player)
	logic()
	render()

end