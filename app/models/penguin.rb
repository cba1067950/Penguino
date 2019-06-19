class Penguin < ApplicationRecord
  belongs_to :colony
  validates :name, presence: true, uniqueness: true
  validates :title, presence: true
  validates :temp, presence: true
  # validates :alive, presence: true
  validates :species, presence: true

  def alive_or_dead
    if self.alive == true
      "✅ Alive"
    else
      "❎ Deceased"
    end
  end

end
