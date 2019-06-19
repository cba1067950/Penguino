class Penguin < ApplicationRecord
  belongs_to :colony

  validates :name, presence: true, uniqueness: true
  validates :title, presence: true
  # validates :temp, presence: true
  # validates :alive, presence: true
  validates :species, presence: true
end
