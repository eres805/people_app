class Person < ActiveRecord::Migration
  def change
  	create_table :persons do |t|
  		t.string :first_name
  		t.string :last_name
  		t.string :birthday
  		t.integer :drink_attribute
  		t.string :image_url
  		t.boolean :license
  	end
  end
end
