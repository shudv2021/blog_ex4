class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  validates :title, length: { maximum: 140 }
  
  has_many :comments
  belongs_to :user
  
  def subject
    title
  end
  
  def last_comment
    comments.last
  end
end
