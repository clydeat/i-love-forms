class User < ApplicationRecord
	validates :username, presence: true, uniqueness: true
    validates :username, format: { with: /\A[a-zA-Z0-9]+\z/ }

	validates :bio, presence: true

	validates :email, presence: true, uniqueness: true
end
