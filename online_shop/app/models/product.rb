class Product < ActiveRecord::Base
	scope :available, -> { where(in_stock: true)}
	# scope :cheap, -> {where(price: 0..1)}
end
