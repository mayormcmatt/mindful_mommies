class Article < ActiveRecord::Base
  has_many :comments
  has_many :taggings
  validates :title, presence: true
  validates :body, presence: true
end
