class Build < ApplicationRecord
  belongs_to :battery
  belongs_to :solar_panel
  belongs_to :user
  has_many :bookmarks
  has_many :build_appliances
  has_many :comments
  validates :name, presence: true
  validates :total_price, presence: true, numericality: true
end
