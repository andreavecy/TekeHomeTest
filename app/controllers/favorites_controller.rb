class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end

  def show
  end

  def new
    @favorite = Favorite.new
  end

  def edit
  end

  def create
    @like = Favorite.create(favorite_params)
    respond_to do |format|
      if @like.update(favorite_params)
        format.html { redirect_to root_path, notice: 'Liked' }
        format.json { render :show, status: :ok, location: @favorite }
      else
        format.html { render root_path, notice: 'Error..' }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
      end
  end

  def destroy
    @favorite = Favorite.find_by(unsplash_id: params[:unsplash_id])
    @favorite.delete
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def favorite_params
      params.permit(:unsplash_id, :description, :image_url)
    end
end
