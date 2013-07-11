require 'test_helper'

class PixesControllerTest < ActionController::TestCase
  setup do
    @pix = pixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pix" do
    assert_difference('Pix.count') do
      post :create, pix: { category: @pix.category, description: @pix.description, image: @pix.image, name: @pix.name }
    end

    assert_redirected_to pix_path(assigns(:pix))
  end

  test "should show pix" do
    get :show, id: @pix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pix
    assert_response :success
  end

  test "should update pix" do
    put :update, id: @pix, pix: { category: @pix.category, description: @pix.description, image: @pix.image, name: @pix.name }
    assert_redirected_to pix_path(assigns(:pix))
  end

  test "should destroy pix" do
    assert_difference('Pix.count', -1) do
      delete :destroy, id: @pix
    end

    assert_redirected_to pixes_path
  end
end
