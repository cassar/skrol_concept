require 'test_helper'

class SentenceDestroyTest < ActionDispatch::IntegrationTest
  
  setup do
    @sentence = sentences(:sentence_1)
  end

  test 'delete entries from index' do
    get sentences_path
    assert_template 'sentences/index'
    assert_select 'a[href=?]', sentence_path(@sentence), text: 'Show'
    assert_select 'a[href=?]', sentence_path(@sentence), text: 'Delete'
    assert_difference 'Sentence.count', -1 do
      delete sentence_path(@sentence)
    end  
  end

end
