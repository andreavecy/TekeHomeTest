require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'invalid without unsplash id' do
    favorite = Favorite.new(image_url: "https://images.unsplash.com/photo-1593642532973-d31b6557fa68?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&ixid=eyJhcHBfaWQiOjk0NDIyfQ&utm_source=TakeHomeTest&utm_medium=referral&utm_campaign=api-credit")
    refute favorite.valid?, 'Favorite is invalid without unsplash id'
    assert_not_nil favorite.errors[:name], 'no validation error for unsplash id present'
  end
end
