class Order < ActiveRecord::Base
  SHIPPING_FEE = 0.00

  validates :state, :payment_method, :reference_number, presence: true
  validates :reference_number, uniqueness: true

  has_many :order_items, dependent: :destroy
  has_many :products, through: :order_items

  has_one :order_detail, dependent: :destroy
  accepts_nested_attributes_for :order_detail

  state_machine initial: :for_delivery do
    event :reset do
      transition :completed => :for_delivery
    end

    event :complete do
      transition :for_delivery => :completed
    end
  end

  def total
    products.sum(:price) + SHIPPING_FEE
  end
end
