class HomeController < ApplicationController
  def index
    @photos = Unsplash::Photo.all
  end
end
