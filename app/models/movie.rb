class Movie < ActiveRecord::Base
  attr_accessible :director_id, :title, :year

  validates_presence_of :director_id, :title

  belongs_to :director
  # belongs_to :director, :class_name => "Director", :foreign_key => :director_id
  # def director
  #   return Director.find_by_id(self.director_id)
  # end

  has_many :roles
  # has_many :roles, :class_name => "Role", :foreign_key => :movie_id
  # def roles
  #   return Role.where(:movie_id => self.id)
  # end
end
