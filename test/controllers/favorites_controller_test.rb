require 'test_helper'

class FavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favorite = favorites(:one)
  end

  test "should get index" do
    get my_favorites_url
    assert_response :success
  end


  test "should create favorite" do
    assert_difference('Favorite.count') do
      post favorite_url, params: {:unsplash_id => '1', :description => 'anything', :image_url => 'url'}
    end

    assert_redirected_to root_path
  end


  test "should destroy favorite" do
    assert_difference('Favorite.count', -1) do
      delete delete_favorite_url(@favorite)
    end

    assert_redirected_to root_path
  end
end
