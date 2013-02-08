class Director < ActiveRecord::Base
  attr_accessible :dob, :name

  # has many movies
end
