class StaticPagesController < ApplicationController
  def home
    
    @sentence = Sentence.all

    @GermanSentenceMarquee = []
    @GermanPhoneticMarquee = []
    @JapaneseSentenceMarquee= []
    @JapaneseRomajiMarquee = []
    @EnglishSentenceMarquee = []

   
    @sentence.each do |sentence|
      @GermanSentenceMarquee << sentence.german_sentence
      @GermanPhoneticMarquee << sentence.german_phonetic
      @JapaneseSentenceMarquee << sentence.japanese_sentence
      @JapaneseRomajiMarquee << sentence.japanese_romaji
      @EnglishSentenceMarquee << sentence.english_sentence
    end
  end
end


=begin

  #I'm tring to make a function that can be called within the view. Currently showing " undefined method `InstanceMarquee' "
  
    def InstanceMarquee(language_type)  
      @instanceArray = []
      @sentence.each do |sentence|
        @instanceArray << sentence.language_type
      end
    end
    
=end
