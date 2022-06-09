class BuildsController < ApplicationController
  def index
    @builds = Build.includes(:name, :total_price, :solar_panel_id, :battery_id, :user_id)
  end

  def show
    @builds = Build.find(params[:id])
  end
end
