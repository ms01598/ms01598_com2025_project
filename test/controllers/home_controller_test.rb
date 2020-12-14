require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get home" do
    get :home
    assert_response :success

    assert_select 'title', 'Best Music YOUniverse'
    assert_select 'h1', 'Best Music YOUniverse'
    assert_select 'h2', "Find here a collection of everyone's favourite music!"

  end

  test "should get contact" do
    get :contact
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'Best Music YOUniverse'
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post :request_get_in_contact, params:
      {name: "Marilia", email: "marilia@email.com", phone: "1234567890", message: "hello"}

    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end


  test "should get songs" do
    get :songs
    assert_response :success
  end

  test "should get artists " do
    get :artists
    assert_response :success
  end

  test "should get albums" do
    get :albums
    assert_response :success
  end

  test "should get notes" do
    get :notes
    assert_response :success
  end

  test "should get favourites" do
    get :favourites
    assert_response :success
  end


end
