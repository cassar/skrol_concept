require 'test_helper'

class SentenceTest < ActiveSupport::TestCase
def setup
    @sentence = Sentence.new(
      EnglishSentence: "This is a Engish Sentence example", 
      EnglishPhonetic: "This is a English Phonetic example", 
      GermanSentence: "This is a German Sentence example", 
      GermanPhonetic: "This is a German Phonetic example",
      JapaneseSentence: "This is as Japanese Sentence example",
      JapaneseRomaji: "This is a Japanese Romaji example",
      image: "Casa Stark.jpg") 
end
  
  test "should be valid" do
    assert @sentence.valid?
  end
  
  test "image should be present" do
    @sentence.image = "      "
    assert_not @sentence.valid?
  end
  
  test "EnglishSentence should be present" do
    @sentence.EnglishSentence = "     "
    assert_not @sentence.valid?
  end
  
  test "EnglishPhonetic should be present" do
    @sentence.EnglishPhonetic = "     "
    assert_not @sentence.valid?
  end
  
  test "GermanSentence should be present" do
    @sentence.GermanSentence = "     "
    assert_not @sentence.valid?
  end
  
  test "GermanPhonetic should be present" do
    @sentence.GermanPhonetic = "     "
    assert_not @sentence.valid?
  end
  
  test "JapaneseSentence should be present" do
    @sentence.JapaneseSentence = "     "
    assert_not @sentence.valid?
  end
  
  test "JapaneseRomaji should be present" do
    @sentence.JapaneseRomaji = "     "
    assert_not @sentence.valid?
  end
end
