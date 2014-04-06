class Person < ActiveRecord::Base

validates(:first_name, :last_name, :birthday, :drink_attribute, :image_url, :license, presence: true)

end