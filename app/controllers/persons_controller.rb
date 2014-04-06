class PersonsController < ApplicationController

	def index
		@persons = Person.all
	end

	def show
		@person = Person.find(params[:id])
	end

	def new
		@person = Person.new
	end

	def create
		@person = Person.create(person_params)
		redirect_to(@person)
	end

	def edit
		@person = Person.find(params[:id])
	end

	def update
		@person = Person.find(params[:id])
		@person.update(person_params)
		redirect_to(@person)
	end

	def destroy
		@person = Person.find(params[:id])
		@person.destroy
		redirect_to persons_path
	end

	private
	def person_params
		params.require(:person).permit(:first_name, :last_name, :birthday, :drink_attribute, :image_url, :license)
	end

end