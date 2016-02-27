class Order < ActiveRecord::Base
  validates :state, :payment_method, :total, presence: true

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
end
