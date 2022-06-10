class SolarPanel < ApplicationRecord
  has_many :builds
  validates :kind, presence: true
  validates :make, presence: true
  validates :model, presence: true
  validates :voltage, presence: true, numericality: true
  validates :watts, presence: true, numericality: true
  validates :price, presence: true, numericality: true
  validates :product_url, presence: true

  def self.formatted
    SolarPanel.all.map do |solarpanel|
      ["#{solarpanel.kind}, #{solarpanel.make}, #{solarpanel.model}", solarpanel.id]
    end
  end
end
