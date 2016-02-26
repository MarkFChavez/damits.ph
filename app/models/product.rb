class Product < ActiveRecord::Base
  validates :name, :price, presence: true
  has_attached_file :photo
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/
end
