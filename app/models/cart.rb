class Cart < ActiveRecord::Base
  has_many :items
  has_many :products, through: :items

  # LOGIC
  def subtotal
    sum = 0

    self.items.each do |item|
      sum += item.subtotal
    end

    return sum
  end

  def total
    self.subtotal + (self.subtotal * self.tax) + self.shipping
  end

end
