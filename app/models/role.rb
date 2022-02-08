class role < ApplicationRecord
    belongs_to :movies
    has_many :people
  
    # def movie
  #   Movie.where({ id: read_attribute(:movie_id) })[0]
  # end

  # def people
  #   Person.where({ Person_id: read_attribute(:id) })
  # end
  
  end