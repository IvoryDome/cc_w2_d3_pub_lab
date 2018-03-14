class Customer

attr_reader :name, :age
attr_accessor :wallet, :drunkenness

def initialize(name, wallet, age, drunkenness)
  @name = name
  @wallet = wallet
  @age = age
  @drunkenness = drunkenness
end

def can_buy_drink?
  @age >= 18 && @drunkenness < 8
end

def buy_drink(pub, drink_to_buy)
  if can_buy_drink?
  @wallet -= drink_to_buy.price
  pub.till += drink_to_buy.price
  pub.drinks.delete_if {|drink| drink == drink_to_buy}
  @drunkenness += drink_to_buy.alcohol_level
  end
end
























end
