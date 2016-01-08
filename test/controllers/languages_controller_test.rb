require 'test_helper'

class LanguagesControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_template 'languages/index'
    # Need to see that the table gets redered for "Language",
    # "number of english entries/number of this.language entries",
    # "number of this.language entries/ number of this.language phonetic
    # entries"
    # "Link to show for this.langugae".
    # should the above go into this controller test? or an integration test?
    # or a model test? or a helper test?
    # The above require a language model with foreign keys.
  end

  test 'should get english profile' do
    get :english_profile
    assert_response :success
    assert_template 'languages/english_profile'
  end

  # test 'should get show' do
  # get :show
  # assert_response :success
  # this requires the index section to be complete first.
  # reiterate importance of language model comprised of foregin keys that is
  # able to gather the relevant entries from the sentences model such that...
  # ID | Language_name | Corresponding Sentence foreign Key |
  # Corresponding Sentence Phonetic Foreign key |
  # end
end
