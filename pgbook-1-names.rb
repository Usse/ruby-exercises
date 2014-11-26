# def say_goodnight(name)
# 	# result = "Good night, " + name
# 	result = "Good night, #{name.capitalize}"
# 	return result
# end

# The value returned by a Ruby method is the 
# value of the last expression evaluated
def say_goodnight(name)
	"Good night, #{name}"
end




puts(say_goodnight("usse"))
puts say_goodnight("usse")


# - Global variables are prefixed with a dollar sign ($)
# - Instance variables begin with an “at” sign (@)
# - Class variables start with two “at” signs (@@)
# - Class names, module names, and constants must 
#   start with an uppercase letter.

# local 							name 
# instance variable 	@name
# class variable 			@@total
# global variable 		$debug
# class name 					MyClass
# constants						FEET_PER_MILE









