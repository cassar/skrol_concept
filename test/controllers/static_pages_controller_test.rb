require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test 'should get home' do
    get :home
    assert_response :success
    assert_select 'title', 'Skroll'
  end

  test 'should get english' do
    get :english
    assert_response :success
    assert_select 'title', 'English IPA | Skroll'
  end

  test 'should get german' do
    get :german
    assert_response :success
    assert_select 'title', 'German | Skroll'
  end

  test 'should get japanese' do
    get :japanese
    assert_response :success
    assert_select 'title', 'Japanese | Skroll'
  end

  test 'should get Portuguese' do
    get :portuguese
    assert_response :success
    assert_select 'title', 'Portuguese | Skroll'
  end

  test 'should get Chinese' do
    get :chinese
    assert_response :success
    assert_select 'title', 'Chinese | Skroll'
  end

  test 'should get Maltese' do
    get :maltese
    assert_response :success
    assert_select 'title', 'Maltese | Skroll'
  end
end
