class Order < ActiveRecord::Base
  has_many :items, dependent: :destroy

  # LOGIC
  def subtotal
    sum = 0

    self.items.each do |item|
      sum += item.subtotal
    end

    return sum
  end

  def total
    self.subtotal + (self.subtotal * 0.10) + 20.00
  end

end
