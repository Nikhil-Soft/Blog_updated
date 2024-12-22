class Book < ApplicationRecord
	include Validates
	belongs_to :author
end
