class Cart < ApplicationRecord

	has_one :user
	belongs_to :user
	has_many :cart_items
	has_many :items, through :cart_items


end
