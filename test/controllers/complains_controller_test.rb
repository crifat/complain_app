require 'test_helper'

class ComplainsControllerTest < ActionController::TestCase
  setup do
    @complain = complains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:complains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create complain" do
    assert_difference('Complain.count') do
      post :create, complain: { description: @complain.description, image_url: @complain.image_url, ip_address: @complain.ip_address, latitude: @complain.latitude, location: @complain.location, longitude: @complain.longitude, title: @complain.title, username: @complain.username }
    end

    assert_redirected_to complain_path(assigns(:complain))
  end

  test "should show complain" do
    get :show, id: @complain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @complain
    assert_response :success
  end

  test "should update complain" do
    patch :update, id: @complain, complain: { description: @complain.description, image_url: @complain.image_url, ip_address: @complain.ip_address, latitude: @complain.latitude, location: @complain.location, longitude: @complain.longitude, title: @complain.title, username: @complain.username }
    assert_redirected_to complain_path(assigns(:complain))
  end

  test "should destroy complain" do
    assert_difference('Complain.count', -1) do
      delete :destroy, id: @complain
    end

    assert_redirected_to complains_path
  end
end
