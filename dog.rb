class Dog
	attr_accessor :name, :breed, :age
	@@number_of_dogs_in_the_city = 0

	def initialize(breed:[],name: raise,age: raise)
		@name = name
		@breed = breed == [] ? breed : breed.split(", ")
		@age = age
		@@number_of_dogs_in_the_city += 1
	end

	def bark
		p "woof woof! I'm #{self.name}"
	end

	def fetch(object: raise)
		case object 
		when "ball"
			"oops!" 
		when "stick"
			"fetching the stick" 
		when "newspaper"
			"fetching the newspaper"
		end
	end

end