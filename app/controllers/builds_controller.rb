class BuildsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @builds = Build.includes(:solar_panel, :battery, :user)
  end
end
