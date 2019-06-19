class Record < ApplicationRecord
  belongs_to :scientist
  belongs_to :colony

  validates :location, presence: true
  validates :project_name, presence: true
end
