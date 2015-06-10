class Book < ActiveRecord::Base
	has_many :authors, :order => 'title DESC'
	has_many :authors, dependent: :destroy
end
