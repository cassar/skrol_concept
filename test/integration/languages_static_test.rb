require 'test_helper'

class LanguagesStaticTest < ActionDispatch::IntegrationTest
  
  test 'languages links' do
    get languages_path
    assert_template 'languages/index'
    assert_select 'a[href=?]', english_profile_path
  end
end
