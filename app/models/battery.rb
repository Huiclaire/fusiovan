class Battery < ApplicationRecord
  has_many :builds
  validates :kind, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :voltage, presence: true, numericality: true
  validates :amp_hours, presence: true, numericality: true
  validates :price, presence: true, numericality: true
  validates :product_url, presence: true

  def self.formatted
    Battery.all.map do |battery|
      ["#{battery.kind}, #{battery.make}, #{battery.model}", battery.id]
    end
  end
end
