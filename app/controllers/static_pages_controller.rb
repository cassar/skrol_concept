class StaticPagesController < ApplicationController
  
  
  def home
  end
  
  def german
    
    require 'bing_translator'
    
    @sentence = Sentence.all
    
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    
    @sentence.each do |sentence|
      if sentence.german_sentence.nil? == true
        sentence.german_sentence = translator.translate(sentence.english_sentence, :from => 'en', :to => 'de')
        sentence.save
      end  
    end  
    
    @GermanSentenceMarquee = []
    @GermanPhoneticMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence|
      @GermanSentenceMarquee << sentence.german_sentence
      @GermanPhoneticMarquee << sentence.german_phonetic
      @EnglishSentenceMarquee << sentence.english_sentence
    end
    
    
  end
  
  def japanese 
    
    @sentence = Sentence.all
    
    @JapaneseSentenceMarquee= []
    @JapaneseRomajiMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence|
      @JapaneseSentenceMarquee << sentence.japanese_sentence
      @JapaneseRomajiMarquee << sentence.japanese_romaji
      @EnglishSentenceMarquee << sentence.english_sentence
    end
    
  end

end