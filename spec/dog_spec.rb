require 'spec_helper'

describe Dog do 
	before :each do 
		@dog = Dog.new(name: 'foo', breed: 'German Sheperd', age: 2)
	end

	context 'when @dog.fetch' do 
		it 'fetch a stick' do 
			expect(@dog.fetch('stick')).to eq 'fetching the stick' 
		end

		it 'fetch newspaper' do 
			expect(@dog.fetch('newspaper')).to eq 'fetching the newspaper'
		end
	end

	it 'should create a dog instance' do 
		@dog.should be_an_instance_of Dog
	end

	let :valid_params do 
		{name: 'foo', breed: 'German Sheperd', age: 2}
	end

	it 'should require age' do 
		expect{Dog.new(breed: 'German Sheperd')}.to raise_error
	end

	it 'should require name' do 
		expect{Dog.new(breed: 'German Sheperd', age: 2)}.to raise_error
	end

	it 'should not require a breed' do 
		@dog1 = Dog.new(name: 'foo', age: 2)
		expect(@dog1.breed).to eq []
	end

	it 'should output breed as an ary' do 
		expect(@dog.breed).to eq ['German Sheperd']
	end

	it 'should can have no breed and it should return an empty ary' do 
		valid_params.delete(:breed)
		expect(Dog.new(valid_params).breed).to eq []
	end

	it 'dog can have multiple comma separated brees' do 
		valid_params[:breed] = "German Sheperd, Golden Retriver"
		expect(Dog.new(valid_params).breed).to eq ["German Sheperd","Golden Retriver"]
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