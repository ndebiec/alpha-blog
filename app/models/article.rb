class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: {minimum: 3, maximum: 40}
  validates :description, presence: true
  validates :user, presence: true
  
end