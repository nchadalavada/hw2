class role < ApplicationRecord
    has_many :roles
  
    # def roles
  #   Role.where({ person_id: read_attribute(:id) })
  # end
  
  end