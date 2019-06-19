class Colony < ApplicationRecord
  has_many :penguins
  has_many :records
  has_many :scientists, through: :records

  validates :name, presence: true
end
