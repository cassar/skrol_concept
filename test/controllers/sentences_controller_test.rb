require 'test_helper'

class SentencesControllerTest < ActionController::TestCase
  setup do
    @sentence = sentences(:sentence_1)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_template 'sentences/index'
    assert_not_nil assigns(:sentence)
    assert_select 'title', 'Sentences | Skrol'
  end

  test 'should get new' do
    get :new
    assert_response :success
    assert_template 'sentences/new'
    assert_select 'title', 'New Sentence | Skrol'
  end

  test 'should create sentence' do
    assert_difference('Sentence.count') do
      post :create, sentence: {
        english_sentence: 'Ohh Ruuuuuby...still need some company'
      }
    end
    assert_redirected_to sentence_path(assigns(:sentence))
  end

  test 'should show sentence' do
    get :show, id: @sentence
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @sentence
    assert_response :success
  end

  test 'should update article' do
    patch :update, id: @sentence, sentence: {
      english_phonetic: 'haloː, maɪ̯nˈnaːmə ɪst luːkə'
    }
    assert_redirected_to sentence_path(assigns(:sentence))
  end

  test 'should destroy sentence' do
    assert_difference('Sentence.count', -1) do
      delete :destroy, id: @sentence
    end
    assert_redirected_to sentences_path
  end
end
