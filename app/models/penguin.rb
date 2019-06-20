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
      "💐 Deceased"
    end
  end

  def assign_image
    image_array = [
      "https://imgur.com/8tO12W1.png",
      "https://imgur.com/o3LyKwR.png",
      "https://imgur.com/r3SUcTO.png",
      "https://imgur.com/r3SUcTO.png",
      "https://imgur.com/Q91Yx9k.png",
      "https://imgur.com/MjI1WK4.png",
      "https://imgur.com/SRw2DLJ.png",
      "https://imgur.com/ASY4lv9.png",
      "https://imgur.com/VkoA2Na.png",
      "https://imgur.com/EsXJN0n.png",
      "https://imgur.com/1Ad7Grs.png",
      "https://imgur.com/NMgET8f.png",
      "https://imgur.com/tKTdSjR.png",
      "https://imgur.com/BuhLwjs.png",
      "https://imgur.com/z2tTEui.png",
      "https://imgur.com/cSECvEk.png",
      "https://imgur.com/2atJlZp.png",
      "https://imgur.com/Uzt4IH0.png",
      "https://imgur.com/JdhLB9x.png",
      "https://imgur.com/2bLwXvL.png",
      "https://imgur.com/JE8BHN6.png",
      "https://imgur.com/P4TKiow.png",
      "https://imgur.com/gYTJeQy.png",
      "https://imgur.com/gW9EjbA.png",
      "https://imgur.com/GVOkST8.png"
    ]
    self.image_url = image_array.sample
  end

end
