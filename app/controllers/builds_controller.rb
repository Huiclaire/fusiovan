class BuildsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  def index
    @builds = Build.includes(:solar_panel, :battery, :user, :build_appliances)
  end

  def show
    @build = Build.find(params[:id])
  end

  def new
    @build = Build.new
  end

  def create
    @build = Build.new(build_params)
    @build.user_id = current_user.id
    if @build.save
         # Will raise ActiveModel::ForbiddenAttributesError
    flash[:alert] = "Your build #{@build.name} has been added to your Dashboard!"
    redirect_to build_path(@build)
    else
      flash[:alert] = "Error #{@build.errors.objects.first.full_message}"
      render :new
    end
  end

  private

  def build_params
    params.require(:build).permit(:name, :battery_id, :solar_panel_id, :appliance_ids)
  end
end
