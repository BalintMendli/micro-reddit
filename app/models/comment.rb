class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :comment_text, presence: true, length: { in: 2..500 }
end
