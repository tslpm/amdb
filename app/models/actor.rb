class Actor < ActiveRecord::Base
  attr_accessible :dob, :name

  # has many roles
end
