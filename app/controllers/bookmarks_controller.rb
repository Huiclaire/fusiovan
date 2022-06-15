class BookmarksController < ApplicationController
  def create
    @build = Build.find(params[:build_id])
    @bookmark = Bookmark.new
    @bookmark.build = @build
    @bookmark.user = current_user
    if @bookmark.save
      redirect_to build_path(params[:build_id])
    else
      # use string format when referrring to actions inside a different controller, otherwise use :symbol
      render "builds/show"
    end
  end
end
