class User < ActiveRecord::Base
  validates :username, :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :email, format: {with: VALID_EMAIL_REGEX, message: 'Please enter a valid email.'}

  has_many :posts
  has_many :comments
  has_many :post_votes
  has_many :comments
  has_many :comment_votes

  # has_secure_password

  def posts_made_count
    self.posts.count
  end

  def comments_made_count
    self.comments.count
  end

  def authenticate(password)
    self.password_digest == password
  end


end
