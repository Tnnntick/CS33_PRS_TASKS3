require "test_helper"

class GanresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ganre = ganres(:one)
  end

  test "should get index" do
    get ganres_url
    assert_response :success
  end

  test "should get new" do
    get new_ganre_url
    assert_response :success
  end

  test "should create ganre" do
    assert_difference("Ganre.count") do
      post ganres_url, params: { ganre: {  } }
    end

    assert_redirected_to ganre_url(Ganre.last)
  end

  test "should show ganre" do
    get ganre_url(@ganre)
    assert_response :success
  end

  test "should get edit" do
    get edit_ganre_url(@ganre)
    assert_response :success
  end

  test "should update ganre" do
    patch ganre_url(@ganre), params: { ganre: {  } }
    assert_redirected_to ganre_url(@ganre)
  end

  test "should destroy ganre" do
    assert_difference("Ganre.count", -1) do
      delete ganre_url(@ganre)
    end

    assert_redirected_to ganres_url
  end
end
