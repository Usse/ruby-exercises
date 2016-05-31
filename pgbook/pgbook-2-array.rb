a = [
	1,
	'cat',
	3.14
]


# puts a[0].methods.sort

puts "The first element is #{a[0]}"
puts "The second element is #{a[1]}"
puts "The third element is #{a[2]}"

puts "The array 'a' is #{a.inspect}"


b = %w{ant bee cat dog elk}
puts "The array 'b' is #{b.inspect}"


inst_section = {
	:cello => 'string',
	:clarinet => 'woodwind',
	:drum => 'percussion',
	:oboe => 'woodwind',
	:trumpet => 'brass',
	:violin => 'string'
}

inst_section[:oboe]
inst_section[:wobbidy]


