require 'spec_helper'

describe Mongrel do
	before :each do 
		@mongrel = Mongrel.new(name: 'foo', breed: 'German Sheperd', age: 2)
	end
	
	it 'should be an instance of mongrel' do 
		@mongrel.should be_an_instance_of Mongrel
	end

	it 'should bark differenlty to a dog' do 
		expect(@mongrel.bark).to eq "woof woof! I'm #{@mongrel.name} and I have multiple breeds"
	end
end