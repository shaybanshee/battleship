#create grid

water = "~"
ship = 1
hitship = 2
hitwater = 3
gridsize = 10 
still_searching = true

grid = Array.new(10){Array.new(10){water}}
grid[1][3] = ship
grid[6][3] = ship
grid[2][2] = ship
grid[4][1] = ship
grid[7][7] = ship
grid[2][6] = ship
grid[0][3] = ship
grid[5][5] = ship
grid[5][2] = ship
grid[6][1] = ship
grid[7][4] = ship
grid[3][3] = ship
grid[4][7] = ship



#print grid

while true 

	(0...gridsize).each do |i|
		(0...gridsize).each do |j|
			print grid[i][j]
			print " "
		end 
		puts
	end 

puts "What is your X coordinate?"
x = gets.chomp.to_i

puts "What is your Y coordinate?"
y = gets.chomp.to_i
	
	if grid[x][y] == ship 
		puts "You hit!"
		grid [x][y] = hitship

	elsif x > 0
	    if grid [x - 1][y] == ship
          puts "You're close, but still a jagoff!"
       end 
	

  elsif y > 0
	    if grid [x][y - 1] == ship
		    puts "You're close, but still a jagoff!"
      end
   

    elsif x < gridsize
	    if grid [x + 1][y] == ship
		    puts "You're close, but still a jagoff!"
      end
    

    elsif y < gridsize
	    if grid [x][y + 1] == ship 
		    puts "You're close, but still a jagoff!"
	    	end
	   else 
				puts "You missed jagaloon!"
		end
end




#userinput of hitting ships
#determine hit or miss
#change value in grid if hit or miss coordinate
