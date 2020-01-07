class Recipe < ApplicationRecord
	belongs_to :user
	has_many :ingredients
	has_many :directions
	has_many :comments
	has_many_attached :images
	paginates_per 1
end
