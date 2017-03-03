class AboutController < ApplicationController

  def index
    @abouts = About.all
  end

  def edit
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    if @about.update(about_params)
      redirect_to about_index_path
    else
      render :edit
    end
  end


  private
  def about_params
    params.require(:about).permit(:description)
  end
end
