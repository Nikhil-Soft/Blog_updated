class Author < ApplicationRecord
	include Validates
	has_many :books, dependent: :destroy
end
