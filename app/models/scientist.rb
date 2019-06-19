class Scientist < ApplicationRecord
  has_secure_password
  has_many :records
  has_many :colonies, through: :records

  validates :name, presence: true
  validates :age, presence: true
  validates :bio, presence: true
  validates :username, presence: true, uniqueness: true
end
