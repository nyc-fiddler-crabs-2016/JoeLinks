class Post < ActiveRecord::Base
  validates :title, :url, :user_id, presence: true

  belongs_to :user

  has_many :comments
  has_many :post_votes

  def self.just_domain
  end

  def comments_count
    self.comments.count
  end

  def votes_count
    self.post_votes.count
  end

  def comments_sorted_most_recent
    self.comments.order(created_at: :desc)
  end

  def direct_or_page_link
    if self.body
      #go to show page
    else
      # go to url
    end
  end

end
