class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
    validates :email, presence: true,uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    validates :email, uniqueness: true
    validates :username,uniqueness: true
    has_many :todos
end
