class User < ApplicationRecord
  has_many :reviews
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
  validates :username, length: { minimum: 2 }
  validates :username, :first_name, :password, presence: true
end
