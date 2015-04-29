require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Skroll | Home"
  end
  
  test "should get english" do
    get :english
    assert_response :success
    assert_select "title", "Skroll | English IPA"
  end

  test "should get german" do
    get :german
    assert_response :success
    assert_select "title", "Skroll | German"
  end

  test "should get japanese" do
    get :japanese
    assert_response :success
    assert_select "title", "Skroll | Japanese"
  end
  
  test "should get Portuguese" do
    get :portuguese
    assert_response :success
    assert_select "title", "Skroll | Portuguese"
  end
  
  test "should get Chinese" do
    get :chinese
    assert_response :success
    assert_select "title", "Skroll | Chinese"
  end
  
  test "should get Maltese" do
    get :maltese
    assert_response :success
    assert_select "title", "Skroll | Maltese"
  end
  
end
