class BuildAppliance < ApplicationRecord
  belongs_to :appliance
  belongs_to :build
  validates :use_hours, presence: true, numericality: true
  validates :amp_hours, presence: true, numericality: true
end
