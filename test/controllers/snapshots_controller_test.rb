require 'test_helper'

class SnapshotsControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_template 'snapshots/index'
    assert_not_nil assigns(:snapshot)
    assert_select 'title', 'Snapshots | Skrol'
  end

  test 'should get new' do
    get :new
    assert_response :success
    assert_template 'snapshots/new'
    assert_select 'title', 'New Snapshot | Skrol'
  end
end
