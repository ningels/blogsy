class Comment < ApplicationRecord
  validates :user, presence: true
  validates :post, presence: true
  belongs_to :user, counter_cache: true
  belongs_to :post, counter_cache: true
end
