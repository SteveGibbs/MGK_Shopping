class Cart < ActiveRecord::Base
  has_many :items, -> { order 'created_at asc'}
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

  def total_quantity
    sum = 0
    self.items.each do |item|
      sum+= item.quantity
    end
    return sum
  end

end
