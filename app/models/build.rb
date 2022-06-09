class Build < ApplicationRecord
  belongs_to :battery
  belongs_to :solar_panel
  belongs_to :user
  has_many :bookmarks
  has_many :build_appliances
  has_many :comments
  validates :name, presence: true
  validates :total_price, presence: true, numericality: true

# after_save :set_total_price
  def total_price
    # need to build
  end
# def set_total_price
#   total_price = ....
#   self.update(total_price: total_price)
# end
end
