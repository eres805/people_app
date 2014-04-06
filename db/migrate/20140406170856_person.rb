class Person < ActiveRecord::Migration
  def change
  	create_table :people do |t|
  		t.string :first_name
  		t.string :last_name
  		t.date :birthday
  		t.integer :drink_attribute
  		t.string :image_url
  		t.boolean :license
  	end
  end
end
