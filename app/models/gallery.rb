class Gallery < ApplicationRecord
  has_attached_file :image, styles: { medium: "800x600>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
