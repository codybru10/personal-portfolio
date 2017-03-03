class AboutController < ApplicationController

  def index
    @abouts = About.all
  end


  private
  def about_params
    params.require(:about).permit(:description)
  end
end
