class Record < ApplicationRecord
  belongs_to :scientist
  belongs_to :colony
end
