require 'test_helper'

class SentenceEditTest < ActionDispatch::IntegrationTest
  def setup
    @sentence = sentences(:sentence_1)
  end

  test 'successful sentence edit' do
    get edit_sentence_path(@sentence)
    assert_template 'sentences/edit'
    english_phonetic = 'haˈloː, maɪ̯n ˈnaːmə ɪst ˈluːkə'
    patch sentence_path(@sentence), sentence: {
      english_phonetic: english_phonetic
    }
    assert_redirected_to @sentence
    @sentence.reload
    assert_equal english_phonetic, @sentence.english_phonetic
  end
end
