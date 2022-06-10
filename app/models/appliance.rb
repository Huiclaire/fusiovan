class Appliance < ApplicationRecord
  has_many :build_appliances
  validates :kind, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :voltage, presence: true, numericality: true
  validates :amps, presence: true, numericality: true
  validates :price, presence: true, numericality: true
  validates :product_url, presence: true

  def self.find_appliance(kind)
    Appliance.where(kind: kind).map do |appliance|
      ["#{appliance.make}, #{appliance.model}", appliance.id]
    end
  end
end
