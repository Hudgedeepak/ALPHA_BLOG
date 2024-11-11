class User < ApplicationRecord

has_many :articles

	validates :username, presence: true, 
	uniqueness: {case_sensitive: false}, length: {minimum: 3, maximum: 25}

	VALID_EMAIL_REGEX = /\A([a-zA-Z0-9._%+-]+)@([a-zA-Z0-9.-]+\.[a-zA-Z]{2,})\z/i
 	validates :email, presence: true, 
 	uniqueness: {case_sensitive: false}, length: {maximum: 30}
end