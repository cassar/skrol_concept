require 'test_helper'

class SentenceTest < ActiveSupport::TestCase
def setup
    @sentence = Sentence.new(
      english_sentence: "This is a Engish Sentence example", 
      english_phonetic: "This is a English Phonetic example", 
      german_sentence: "This is a German Sentence example", 
      german_phonetic: "This is a German Phonetic example",
      japanese_sentence: "This is as Japanese Sentence example",
      japanese_romaji: "This is a Japanese Romaji example",
      image: "Casa Stark.jpg") 
end
  
  test "should be valid" do
    assert @sentence.valid?
  end
  
  test "image should be present" do
    @sentence.image = "      "
    assert_not @sentence.valid?
  end
  
  test "Englsh sentence should be present" do
    @sentence.english_sentence = "     "
    assert_not @sentence.valid?
  end
  
  test "English phonetic should be present" do
    @sentence.english_phonetic = "     "
    assert_not @sentence.valid?
  end
  
  test "German sentence should be present" do
    @sentence.german_sentence = "     "
    assert_not @sentence.valid?
  end
  
  test "German phonetic should be present" do
    @sentence.german_phonetic = "     "
    assert_not @sentence.valid?
  end
  
  test "Japanese sentence should be present" do
    @sentence.japanese_sentence = "     "
    assert_not @sentence.valid?
  end
  
  test "Japanese romaji should be present" do
    @sentence.japanese_romaji = "     "
    assert_not @sentence.valid?
  end
end
