#
# ===========================
# Loops
# ===========================

a = 1
until a >= 10
  a += 1
  next unless a.even?
  puts a
end

numbers = [1, 2, 3, 4, 5]
for number in numbers
  puts "#{number * 2}"
end

groceries = [
  'banana',
  'pasta',
  'tomato'
]
groceries.each do |food|
  puts food
end

(0..5).each do |i|
  puts "--> #{i}"
end

#
# ===========================
# Functions
# ===========================

def add(x, y)
  x.to_i + y.to_i
end
puts add(4, 5)

#
# ===========================
# Exceptions
# ===========================

first_num = 1
second_num = 5
begin
  answer = first_num / second_num
rescue
  puts "You can't divide by zero"
  exit
end
puts answer


def check_age(age)
  raise ArgumentError, 'Enter a positive number' unless age > 0
end
check_age(30) # check_age(0)

#
# ===========================
# Strings
# ===========================

multiline_string = <<EOM
  Woo
  Waa
  #{4 + 5} \n\n
EOM
puts multiline_string

first_name = 'Andrea'
puts first_name.include?('ndr')
puts first_name.size
puts 'Vowels: ' + first_name.count('aeiou').to_s
puts 'Consonants: ' + first_name.count('^aeiou').to_s
puts first_name.start_with?'A'

# upcase downcase swapcase
# lstrip rstrip strip
# rjust(20, '.') ljust center
# chop chomp chomp('last')
# delete('a')
# split(/ /)


#
# ===========================
# Object
# ===========================
class Animal
  def initialize
    puts "Creating a new animal"
  end

  def set_name(name)
    @name = name
  end

  def get_name
    @name
  end

  def name
    @name
  end

  def name=(name)
    @name = name
  end
end

cat = Animal.new
cat.set_name('Quiri')
puts cat.get_name
puts cat.name
cat.name = 'Bisou'
puts cat.name
