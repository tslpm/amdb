class Role < ActiveRecord::Base
  attr_accessible :actor_id, :character_name, :movie_id

  validates_presence_of :actor_id, :movie_id

  # belongs to movie
  def movie
    return Movie.find_by_id(self.movie_id)
  end

  # belongs to actor
  def actor
    return Actor.find_by_id(self.actor_id)
  end
end
