class Request < ActiveRecord::Base
	attr_accessible :name, :email, :website, :message

	validates :name, :message, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

end