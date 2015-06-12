class Book < ActiveRecord::Base
	has_many :authors, dependent: :destroy
end
