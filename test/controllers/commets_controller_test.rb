require 'test_helper'

class CommetsControllerTest < ActionController::TestCase
  setup do
    @commet = commets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commet" do
    assert_difference('Commet.count') do
      post :create, commet: { body: @commet.body, post_id: @commet.post_id }
    end

    assert_redirected_to commet_path(assigns(:commet))
  end

  test "should show commet" do
    get :show, id: @commet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commet
    assert_response :success
  end

  test "should update commet" do
    patch :update, id: @commet, commet: { body: @commet.body, post_id: @commet.post_id }
    assert_redirected_to commet_path(assigns(:commet))
  end

  test "should destroy commet" do
    assert_difference('Commet.count', -1) do
      delete :destroy, id: @commet
    end

    assert_redirected_to commets_path
  end
end
