class Product < ActiveRecord::Base
  has_attached_file :image_url, styles: { small: "64x64", med: "100x100", large: "200x200" , thumb: "150x150#"}
  validates_attachment_content_type :image_url, content_type: /\Aimage\/.*\Z/
end
