class ComponentsController < ApplicationController

  def index
    @batteries = Battery.all
    @solar_panels = SolarPanel.all
  end

end
