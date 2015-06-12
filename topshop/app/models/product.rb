class Product < ActiveRecord::Base
  # attr_accessible :expiration_date, :in_stock, :name, :price, :weight
	validates :name,
	          presence: true,
	          uniqueness: true,
	          length: { minimum: 5,
	          too_short: "must have at least %{count} characters" }

	validates :price,
			  presence: true 
	
	validates :weight,
			  numericality: true

	validates :in_stock,	
			   inclusion: { in: [true,false]}	  		           
end
