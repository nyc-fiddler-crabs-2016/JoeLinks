class User < ActiveRecord::Base
  validates :username, :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :email, format: {with: VALID_EMAIL_REGEX, message: 'Please enter a valid email.'}

  has_many :posts
  has_many :comments
  has_many :post_votes
  has_many :comments
  has_many :comment_votes

end