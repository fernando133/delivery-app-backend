class User < ApplicationRecord

	has_secure_password

	validates :name, presence:true
	validates :celphone, presence:true, uniqueness:true
end
