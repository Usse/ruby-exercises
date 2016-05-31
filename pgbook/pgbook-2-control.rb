today = Time.now

if today.saturday?
	puts 'Do chores around the house'
elsif today.sunday?
	puts 'Relax..'
else
	puts "Go to work!"
end

# while line = gets and
# 	puts line.upcase
# end


radiation = 3001
puts "Danger, Will Robinson" if radiation > 3000


square = 4
while square < 100000
	square = square * square
	puts square
end
# square = 4
# square = square * square while square < 10000



puts "You have #{ARGV.size} arguments"


