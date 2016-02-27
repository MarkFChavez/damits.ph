class OrderDetail < ActiveRecord::Base
  belongs_to :order
  validates :name, :address, :email, presence: true
end
