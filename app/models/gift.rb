class Gift < ApplicationRecord
  has_one_attached :image

  scope :pixes , -> { where(name: "pix").first }
end
