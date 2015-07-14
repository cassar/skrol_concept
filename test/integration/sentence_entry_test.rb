require 'test_helper'

class SentenceEntryTest < ActionDispatch::IntegrationTest
  
  test 'successful sentence entry' do
    get new_sentence_path
    assert_difference 'Sentence.count', 1 do
      post_via_redirect sentences_path, sentence: {
        english_sentence: "Ohh Ruuuuuby...still need some company"
      }
    end
    assert_template 'sentences/show'
  end  
end
