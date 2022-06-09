class Build < ApplicationRecord
  belongs_to :battery
  belongs_to :solar_panel
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :build_appliances, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :appliances, through: :build_appliances
  # after_save :set_total_price

  validates :name, presence: true

  def set_total_price
    appliances.sum(:price)
  end

  def total_amp_hours
    build_appliances.sum(:amp_hours)
  end
end
