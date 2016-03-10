class Comment < ActiveRecord::Base
  validates :body, :post_id, :user_id, presence: true

  belongs_to :user
  belongs_to :post

  has_many :comment_votes
end
