class BuildsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def index
    # @params_query = params[:query] && params[:query][:search_word] ? params[:query][:search_word] : ""
    if params[:query].present? && params[:query][:search_word].present?
      @params_query = params[:query][:search_word]
      @builds = Build.global_search(params[:query][:search_word])
    else
      @builds = Build.includes(:solar_panel, :battery, :user, :build_appliances)
    end
  end

  def show
    @build = Build.find(params[:id])
  end

  def new
    @build = Build.new
    @build.build_appliances.build
  end

  def create
    @build = Build.new(build_params)
    @build.user_id = current_user.id
    if @build.save
      @build.update(total_price: @build.set_total_price)
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
    params.require(:build).permit(:name, :battery_id, :solar_panel_id, build_appliances_attributes: [:appliance_id, :use_hours])
  end
end
