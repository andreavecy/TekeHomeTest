class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def create
    @like = Favorite.create(favorite_params)
    if @like.update(favorite_params)
      redirect_to root_path, notice: 'Liked'
    else
      redirect_to root_path, notice: 'Error..'
    end
  end

  def destroy
    @favorite = Favorite.find_by(unsplash_id: params[:unsplash_id])
    @favorite.delete
    redirect_back fallback_location: root_path, notice: 'like was successfully destroyed.'
  end

  private

  def favorite_params
    params.permit(:unsplash_id, :description, :image_url)
  end
end
