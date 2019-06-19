class Colony < ApplicationRecord
  has_many :penguins
  has_many :records
  has_many :scientists, through: :records
  validates :name, presence: true

  def penguin_count
    self.penguins.count
  end

  def active_or_not
    if self.active == true
      "✅ Active"
    else
      "❎ Inactive"
    end
  end

end
