require 'test_helper'

class Topic1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @topic1 = topic1s(:one)
  end

  test "should get index" do
    get topic1s_url
    assert_response :success
  end

  test "should get new" do
    get new_topic1_url
    assert_response :success
  end

  test "should create topic1" do
    assert_difference('Topic1.count') do
      post topic1s_url, params: { topic1: { description: @topic1.description, title: @topic1.title } }
    end

    assert_redirected_to topic1_url(Topic1.last)
  end

  test "should show topic1" do
    get topic1_url(@topic1)
    assert_response :success
  end

  test "should get edit" do
    get edit_topic1_url(@topic1)
    assert_response :success
  end

  test "should update topic1" do
    patch topic1_url(@topic1), params: { topic1: { description: @topic1.description, title: @topic1.title } }
    assert_redirected_to topic1_url(@topic1)
  end

  test "should destroy topic1" do
    assert_difference('Topic1.count', -1) do
      delete topic1_url(@topic1)
    end

    assert_redirected_to topic1s_url
  end
end
