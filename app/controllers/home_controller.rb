class HomeController < ApplicationController
  def index
    if params[:query]
      @photos = Unsplash::Photo.search(params[:query])
    else
      @photos = Unsplash::Photo.all
    end
  end
end
