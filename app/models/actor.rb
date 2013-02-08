class Actor < ActiveRecord::Base
  attr_accessible :dob, :name

  # has many roles
  def roles
    return Role.where(:actor_id => self.id)
  end
end
