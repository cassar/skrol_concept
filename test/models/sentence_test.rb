require 'test_helper'
class SentenceTest < ActiveSupport::TestCase
  def setup
    @sentence = Sentence.new(english_sentence: 'Hello my name is')
  end

  test 'english_sentence should be present' do
    @sentence.english_sentence = '       '
    assert_not @sentence.valid?
  end
end
