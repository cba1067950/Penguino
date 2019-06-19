class Penguin < ApplicationRecord
  belongs_to :colony

  def alive_or_dead
    if self.alive == true
      "✅ Alive"
    else
      "❎ Deceased"
    end
  end

end
