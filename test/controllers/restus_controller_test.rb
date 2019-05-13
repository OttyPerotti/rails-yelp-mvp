require 'test_helper'

class RestusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restu = restus(:one)
  end

  test "should get index" do
    get restus_url
    assert_response :success
  end

  test "should get new" do
    get new_restu_url
    assert_response :success
  end

  test "should create restu" do
    assert_difference('Restu.count') do
      post restus_url, params: { restu: {  } }
    end

    assert_redirected_to restu_url(Restu.last)
  end

  test "should show restu" do
    get restu_url(@restu)
    assert_response :success
  end

  test "should get edit" do
    get edit_restu_url(@restu)
    assert_response :success
  end

  test "should update restu" do
    patch restu_url(@restu), params: { restu: {  } }
    assert_redirected_to restu_url(@restu)
  end

  test "should destroy restu" do
    assert_difference('Restu.count', -1) do
      delete restu_url(@restu)
    end

    assert_redirected_to restus_url
  end
end
