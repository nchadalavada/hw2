class person < ApplicationRecord
  belongs_to:movies  
  has_many :roles
  
    # def movie
  #   Movie.where({ id: read_attribute(:movie_id) })[0]
  # end

  # def roles
  #   Role.where({ Role_id: read_attribute(:id) })
  # end
  
  end