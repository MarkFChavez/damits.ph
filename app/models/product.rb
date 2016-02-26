class Product < ActiveRecord::Base
  validates :name, :price, presence: true
  has_attached_file :photo, :styles => { medium: "300x300>", small: "150x150>", thumb: "76x76>" }
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
