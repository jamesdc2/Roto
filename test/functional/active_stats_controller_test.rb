require 'test_helper'

class ActiveStatsControllerTest < ActionController::TestCase
  setup do
    @active_stat = active_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:active_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create active_stat" do
    assert_difference('ActiveStat.count') do
      post :create, :active_stat => @active_stat.attributes
    end

    assert_redirected_to active_stat_path(assigns(:active_stat))
  end

  test "should show active_stat" do
    get :show, :id => @active_stat.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @active_stat.to_param
    assert_response :success
  end

  test "should update active_stat" do
    put :update, :id => @active_stat.to_param, :active_stat => @active_stat.attributes
    assert_redirected_to active_stat_path(assigns(:active_stat))
  end

  test "should destroy active_stat" do
    assert_difference('ActiveStat.count', -1) do
      delete :destroy, :id => @active_stat.to_param
    end

    assert_redirected_to active_stats_path
  end
end
