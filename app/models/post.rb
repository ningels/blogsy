class Post < ApplicationRecord
  validates :user, presence: true
  validates :title, presence: true
  validates :body, presence: true

  belongs_to :user, counter_cache: true 
  has_many :comments
end
