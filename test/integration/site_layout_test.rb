require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  
  test 'layout links' do
    get root_path
    assert_template 'static_pages/home'
    assert_select 'a[href=?]', root_path
    assert_select 'a[href=?]', english_path, count: 2
    assert_select 'a[href=?]', german_path, count: 2
    assert_select 'a[href=?]', japanese_path, count: 2
    assert_select 'a[href=?]', portuguese_path, count: 2
    assert_select 'a[href=?]', chinese_path, count: 2
    assert_select 'a[href=?]', maltese_path, count: 2
    assert_select 'a[href=?]', sentences_path
    assert_select 'a[href=?]', languages_path
    assert_select 'a[href=?]', snapshots_path
  end
end
