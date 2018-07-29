require 'spec_helper'

describe Dog do 
	before :each do 
		@dog = Dog.new(name: 'foo', breed: 'German Sheperd', age: 2)
	end

	it 'should require name' do 
		expect{Dog.new(breed: 'German Sheperd', age: 2)}.to raise_error
	end

	it 'should create a dog instance' do 
		@dog.should be_an_instance_of Dog
	end

	it 'should bark with s/he name' do 
		expect(@dog.bark).to eq "woof woof! I'm #{@dog.name}"
	end

	it 'should increase the number of dogs in the city by 1 when Dog.new' do 
		before_new_dog = Dog.class_variable_get(:@@number_of_dogs_in_the_city)
		@dog = Dog.new(name: 'bar', breed: 'German Sheperd', age: 2)
		after_new_dog = Dog.class_variable_get(:@@number_of_dogs_in_the_city)

		expect(after_new_dog - 1).to eq before_new_dog
	end
end