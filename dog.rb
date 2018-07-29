class Dog
	attr_accessor :name, :breed, :age
	@@number_of_dogs_in_the_city = 0

	def initialize(name: raise,breed: raise,age: raise)
		@name = name
		@breed = breed ||= []
		@age = age
		@@number_of_dogs_in_the_city += 1
	end

	def bark
		p "woof woof! I'm #{self.name}"
	end
end

