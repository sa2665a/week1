class ShoppingCart
	attr_accessor :items, :price, :amount
	def initialize 
		@items = []
		@price= []
		@amount= []
	end

	def add_item(item)
		@items.push(item)
	end

	def calculate_price
		@total = 0
		@items.each do |item|
			@total= @total+item.price
		end
		@total
	end

	def show
		@amount= 0
		@items.each do |item|
			@amount=@amount+ item.amount
		end
		@amount
	end

	def unit_amount 
		i= Hash.new(0)
		@items.each do |v|
			i[v]+= 1
		end
		i.each do |k,v|
			puts "You have #{k.amount} #{k.items} and the price per unit is $#{k.price*v}"
		end
	end

	def total_cart
		@totalcart= 0
		@items.each do |item|
			@totalcart=@totalcart+(item.price*item.amount)
		end
		@totalcart
	end


end

class Item 
	attr_accessor :items, :price, :amount
  def initialize(items, price,amount)
      @items = items
      @price = price
      @amount= amount
  end

  def price
      @price
  end

end

class Discount < ShoppingCart
		def initialize(items,price,amount,discountprice)
			super(items,price,amount)
			@discountprice=discountprice
		end
		def apples_disc

			if item_counter == 2
			@discountprice
			else
			@price
			end
		end
	end



simon=ShoppingCart.new(Discount.new)
apples= Item.new("apples",10,2)
oranges= Item.new("oranges", 5,3) 
grapes= Item.new("grapes",15,4)   
banana= Item.new("bananas",20,5)   
watermelon = Item.new("watermelons",50,4)

simon.add_item(apples)
simon.add_item(oranges)
simon.add_item(grapes)
simon.add_item(banana)
simon.add_item(watermelon)


puts "your total per item is: $#{simon.calculate_price}"
puts "your amount of items is #{simon.show}"
simon.unit_amount
puts "Your total without IVA is $#{simon.total_cart}"
