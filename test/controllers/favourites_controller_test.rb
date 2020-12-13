require 'test_helper'

class FavouritesControllerTest < ActionDispatch::IntegrationTest
  test "should get favourites" do
    get favourites_favourites_url
    assert_response :success
  end

end
