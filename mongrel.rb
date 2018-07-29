class Mongrel < Dog
	def initialize(breed:[],name: raise,age: raise)
		super
	end

	def bark
		super
		p "woof woof! I'm #{self.name} and I have multiple breeds"
	end
end