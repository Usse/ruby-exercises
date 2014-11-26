puts "------------Classes------------"

class BookInStock

	attr_reader :isbn
	attr_accessor :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

	# def isbn
	# 	@isbn
	# end

	# def price
	# 	@price
	# end

	# def price=(new_price)
	# 	@price = new_price
	# end

	def to_s
		"ISBN: #{@isbn}, Price: #{@price}"
	end

end

b1 = BookInStock.new('34534645',3)
puts b1

b2 = BookInStock.new('45645667',3.14)
puts b2

b3 = BookInStock.new('76832451','5.65')
puts b3


book = BookInStock.new('83451245',12.34)
puts "ISBN: #{book.isbn}"
puts "Price: #{book.price}"
book.price = book.price * 0.75
puts "Price: #{book.price}"


