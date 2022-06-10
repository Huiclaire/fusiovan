class BuildAppliance < ApplicationRecord
  belongs_to :appliance
  belongs_to :build
  validates :use_hours, presence: true, numericality: true
  validates :amp_hours, presence: true, numericality: true
  before_validation :calculate_amp_hours

  def calculate_amp_hours
    # build appliances use hours * appliances amps
    self.amp_hours = use_hours * appliance.amps
  end
end
