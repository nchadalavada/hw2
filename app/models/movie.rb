class movies < ApplicationRecord
    has_many :people
  
    # def movies
    #   movies.where({ movie_id: read_attribute(:id) })
    # end
  
  end