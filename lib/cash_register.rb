class CashRegister 
  attr_accessor :items, :discount, :total, :last_transaction
  
  def initialize(discount = 0)
    @discount = discount
    @items = [] 
    @total = 0 
  end
  
  def add_item(title, amount, quantity=1)
    self.total += amount * quantity
    quantity.times do 
      items << title 
    end
    self.last_transaction = amount * quantity
  end
  
  def apply_discount
    if discount != 0 
      self.total = (total * ((100.0 - discount.to_f)/100)).i 
      "After the discount, the total comes to $#:"

