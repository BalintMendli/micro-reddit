class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :comment_text, presence: true, length: { in: 2..500 }
  validates :user, presence: true
  validates :post, presence: true
end
