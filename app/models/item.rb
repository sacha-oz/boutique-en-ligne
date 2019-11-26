class Item < ApplicationRecord

	has_many :cart_items
	has_many :carts, through: :cart_items

	has_many :order_items
	has_many :oders, through: :order_items
end

