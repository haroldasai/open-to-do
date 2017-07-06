class User < ActiveRecord::Base
	has_many :lists, dependent: :destroy

	validates :name, presence: true
	validates :email, presence: true
	validates :password_digest, presence: true
	validates :password, presence: true
end
