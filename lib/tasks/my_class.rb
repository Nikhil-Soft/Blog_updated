module Abc
	def get_details
		puts "This is Module"
	end
end

class MyClass
	extend Abc
	def get_name
		puts "Nikhil"
	end
end

obj = MyClass.new()
MyClass.get_details
