class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @builds = Build.includes(:solar_panel, :battery, :user, :build_appliances).limit(3)
  end
end
