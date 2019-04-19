require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get show_user" do
    get home_show_user_url
    assert_response :success
  end

  test "should get animal_profiles" do
    get home_animal_profiles_url
    assert_response :success
  end

  test "should get booking" do
    get home_booking_url
    assert_response :success
  end

  test "should get buy_products" do
    get home_buy_products_url
    assert_response :success
  end

  test "should get about_us" do
    get home_about_us_url
    assert_response :success
  end

end
