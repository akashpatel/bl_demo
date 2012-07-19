require 'test_helper'

class BucketlistsControllerTest < ActionController::TestCase
  setup do
    @bucketlist = bucketlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bucketlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bucketlist" do
    assert_difference('Bucketlist.count') do
      post :create, bucketlist: { title: @bucketlist.title }
    end

    assert_redirected_to bucketlist_path(assigns(:bucketlist))
  end

  test "should show bucketlist" do
    get :show, id: @bucketlist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bucketlist
    assert_response :success
  end

  test "should update bucketlist" do
    put :update, id: @bucketlist, bucketlist: { title: @bucketlist.title }
    assert_redirected_to bucketlist_path(assigns(:bucketlist))
  end

  test "should destroy bucketlist" do
    assert_difference('Bucketlist.count', -1) do
      delete :destroy, id: @bucketlist
    end

    assert_redirected_to bucketlists_path
  end
end
