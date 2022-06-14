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
    self.total_price = appliances.sum(:price).to_i
  end

  def total_amp_hours
    build_appliances.sum(:amp_hours)
  end

  def fridge_use_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "fridge" }).sum(:use_hours)
  end

  def fridge_amp_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "fridge" }).sum(:amp_hours)
  end

  def lights_use_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "lights" }).sum(:use_hours)
  end

  def lights_amp_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "lights" }).sum(:amp_hours)
  end

  def fan_use_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "fan" }).sum(:use_hours)
  end

  def fan_amp_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "fan" }).sum(:amp_hours)
  end

  def inverter_use_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "inverter" }).sum(:use_hours)
  end

  def inverter_amp_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "inverter" }).sum(:amp_hours)
  end

  def pump_use_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "pump" }).sum(:use_hours)
  end

  def pump_amp_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "pump" }).sum(:amp_hours)
  end

  def charger_use_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "charger" }).sum(:use_hours)
  end

  def charger_amp_hours
    build_appliances.joins(:appliance).where(appliances: { kind: "charger" }).sum(:amp_hours)
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
