require 'test_helper'

class LogstashesControllerTest < ActionController::TestCase
  setup do
    @logstash = logstashes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logstashes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logstash" do
    assert_difference('Logstash.count') do
      post :create, logstash: {  }
    end

    assert_redirected_to logstash_path(assigns(:logstash))
  end

  test "should show logstash" do
    get :show, id: @logstash
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logstash
    assert_response :success
  end

  test "should update logstash" do
    put :update, id: @logstash, logstash: {  }
    assert_redirected_to logstash_path(assigns(:logstash))
  end

  test "should destroy logstash" do
    assert_difference('Logstash.count', -1) do
      delete :destroy, id: @logstash
    end

    assert_redirected_to logstashes_path
  end
end
