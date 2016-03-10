class Post < ActiveRecord::Base
  validates :title, :url, :user_id, presence: true

  belongs_to :user

  has_many :comments
  has_many :post_votes

end
