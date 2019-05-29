class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, presence: true, length: { minimum: 2 }, uniqueness: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password_digest, presence: true, length: { minimum: 10 }
end
