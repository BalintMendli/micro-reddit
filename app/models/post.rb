class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { in: 6..50 }
  validates :body, length: { maximum: 600 }
  validates :user, presence: true
end
