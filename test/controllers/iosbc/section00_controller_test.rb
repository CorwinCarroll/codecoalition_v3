require 'test_helper'

class Iosbc::Section00ControllerTest < ActionController::TestCase
  test "should get tour" do
    get :tour
    assert_response :success
  end

  test "should get xcode" do
    get :xcode
    assert_response :success
  end

  test "should get appleid" do
    get :appleid
    assert_response :success
  end

  test "should get intro" do
    get :intro
    assert_response :success
  end

  test "should get setup" do
    get :setup
    assert_response :success
  end

  test "should get labeluse" do
    get :labeluse
    assert_response :success
  end

  test "should get button" do
    get :button
    assert_response :success
  end

  test "should get color" do
    get :color
    assert_response :success
  end

  test "should get uitextfield" do
    get :uitextfield
    assert_response :success
  end

  test "should get uicontrollers" do
    get :uicontrollers
    assert_response :success
  end

  test "should get ios102next" do
    get :ios102next
    assert_response :success
  end

end
