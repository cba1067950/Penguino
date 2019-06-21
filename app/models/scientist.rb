class Scientist < ApplicationRecord
  has_secure_password
  has_many :records
  has_many :colonies, through: :records

  validates :name, presence: true
  validates :age, presence: true
  validates :bio, presence: true
  validates :username, presence: true, uniqueness: true

  def hungry_pengs
    @colonies = self.colonies
    @pengs = @colonies.map {|colony| colony.penguins}.flatten
    @pengs.select {|p| p.hungry? > 1}
  end

end
