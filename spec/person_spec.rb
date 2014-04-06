require 'spec_helper'

describe Person do
	subject(:person) {Person.create(first_name: "John",last_name: "Smith")}
	
	describe :first_name do
		it "has a first name" do
			expect(person.first_name).to eql("John")
		end
	end

	describe :last_name do
		it "has a last name" do
			expect(person.last_name).to eql("Smith")
		end
	end


end

	# subject(:person) { Person.new("John", "Smith", "1983-01-01", 0, "http://placehold.it/350x150") }
