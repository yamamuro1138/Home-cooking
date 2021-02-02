class Cooking < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name, length: { maximum: 20 }
    validates :recipe
    validates :point
    validates :material
    validates :image
  end
end
