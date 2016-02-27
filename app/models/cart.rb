class Cart < ActiveRecord::Base
  acts_as_shopping_cart_using :cart_items

  def tax_pct # we don't support taxes yet
    0
  end
  
  def empty?
    cart_items.empty?
  end
end
