class Item < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order


  # LOGIC
  def subtotal
    self.product.price * self.quantity
  end
end
