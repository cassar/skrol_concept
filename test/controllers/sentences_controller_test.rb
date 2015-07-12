require 'test_helper'

class SentencesControllerTest < ActionController::TestCase
  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should get index' do
    get :index
    assert_response :success
  end
  
  #test 'should get show' do
    #Could I? Should I? Test this?
  #end
end


