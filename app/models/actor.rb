class Actor < ActiveRecord::Base
  attr_accessible :dob, :name

  has_many :roles

  # has many movies
end
