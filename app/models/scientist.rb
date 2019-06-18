class Scientist < ApplicationRecord
  has_many :records
  has_many :colonies, through: :records

end
