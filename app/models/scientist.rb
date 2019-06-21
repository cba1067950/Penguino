class Scientist < ApplicationRecord
  has_secure_password
  has_many :records
  has_many :colonies, through: :records

  validates :name, presence: true
  validates :age, presence: true
  validates :bio, presence: true
  validates :username, presence: true, uniqueness: true

  # def hungry_pengs
  #   byebug
  #   @colonies = self.colonies
  #   @pengs = @colonies.select {|colony| colony.penguins}
  #   @pengs.select {|p| p.hungry? > 1}
  #   byebug
  # end

end
