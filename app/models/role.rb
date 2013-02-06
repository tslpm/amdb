class Role < ActiveRecord::Base
  attr_accessible :actor_id, :character_name, :movie_id

  def movie
    return Movie.find_by_id(self.movie_id)
  end

end
