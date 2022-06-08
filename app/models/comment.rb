class Comment < ApplicationRecord
  belongs_to :build
  belongs_to :user
  validates :content, presence: true, length: { maximum: 500 }
end
