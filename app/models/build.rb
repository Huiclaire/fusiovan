class Build < ApplicationRecord
  belongs_to :battery
  belongs_to :solar_panel
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :build_appliances, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :appliances, through: :build_appliances
  accepts_nested_attributes_for :build_appliances

  validates :name, presence: true, length: { maximum: 13 }

  def set_total_price
    self.total_price = appliances.sum(:price)
  end

  def total_amp_hours
    build_appliances.sum(:amp_hours)
  end

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name ],
    associated_against: {
      user: [ :first_name, :last_name ],
      appliances: [ :kind ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
