require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test 'should get home' do
    get :home
    assert_response :success
    assert_select 'title', 'Skrol'
  end

  test 'should get phonetic alphabet' do
    get :english
    assert_response :success
    assert_select 'title', 'Phonetic Alphabet | Skrol'
  end

  test 'should get german' do
    get :german
    assert_response :success
    assert_select 'title', 'German | Skrol'
  end

  test 'should get japanese' do
    get :japanese
    assert_response :success
    assert_select 'title', 'Japanese | Skrol'
  end

  test 'should get Portuguese' do
    get :portuguese
    assert_response :success
    assert_select 'title', 'Portuguese | Skrol'
  end

  test 'should get Chinese' do
    get :chinese
    assert_response :success
    assert_select 'title', 'Chinese | Skrol'
  end

  test 'should get Maltese' do
    get :maltese
    assert_response :success
    assert_select 'title', 'Maltese | Skrol'
  end
end
