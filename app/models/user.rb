class User < ActiveRecord::Base
  validates :username, :email, presence: true, uniqueness: true # have these same constraints on your database
  validates :password_digest, presence: true # I think this is a no-no. Did you have any issues with Bcrypt? 
  validates :email, format: {with: VALID_EMAIL_REGEX, message: 'Please enter a valid email.'} #nice

  has_many :posts
  has_many :comments
  has_many :post_votes
  has_many :comments #two times!
  has_many :comment_votes

  # has_secure_password

  def posts_made_count
    self.posts.count
  end

  def comments_made_count
    self.comments.count
  end

  # Get rid of this when you implement Bcrypt
  def authenticate(password)
    self.password_digest == password
  end


end
