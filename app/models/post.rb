class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { in: 6..50 }
  validates :body, length: { maximum: 600 }
  validates :user, presence: true
end
