class Product < ActiveRecord::Base
  validates :name, :price, presence: true
  has_attached_file :photo
end
