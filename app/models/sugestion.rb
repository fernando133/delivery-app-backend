class Sugestion < ApplicationRecord
	belongs_to :user, validate: true
end
