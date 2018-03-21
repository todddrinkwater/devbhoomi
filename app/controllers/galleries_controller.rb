class GalleriesController < ApplicationController
  def new
  end

  def create
    @gallery = Gallery.new(gallery_params)

    @gallery.save
    redirect_to @gallery
  end

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  private

  def gallery_params
    params.require(:galleries).permit(
      :name,
      :details
    )
  end
end
