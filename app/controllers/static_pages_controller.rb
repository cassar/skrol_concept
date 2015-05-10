class StaticPagesController < ApplicationController
  include StaticPagesHelper

  def home
  end
  
  def english
    
    @sentence = Sentence.all
    
    @EnglishPhoneticMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence|
      @EnglishPhoneticMarquee << sentence.english_phonetic
      @EnglishSentenceMarquee << sentence.english_sentence
    end

  end
  
  def german
    
    @sentence = Sentence.all

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
  
  def portuguese 
    
    @sentence = Sentence.all
    
    @PortugueseSentenceMarquee= []
    @PortuguesePhoneticMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence|
      @PortugueseSentenceMarquee << sentence.portuguese_sentence
      @PortuguesePhoneticMarquee << sentence.portuguese_phonetic
      @EnglishSentenceMarquee << sentence.english_sentence
    end
    
  end

  def chinese
    
    @sentence = Sentence.all
    
    @ChineseTraditionalMarquee = []
    @ChineseSimplifiedMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence|
      @ChineseTraditionalMarquee << sentence.chinese_traditional
      @ChineseSimplifiedMarquee << sentence.chinese_simplified
      @EnglishSentenceMarquee << sentence.english_sentence
    end
    
  end

  def maltese
    
    @sentence = Sentence.all
    
    @MalteseSentenceMarquee = []
    @MaltesePhoneticMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence|
      @MalteseSentenceMarquee << sentence.maltese_sentence
      @MaltesePhoneticMarquee << sentence.maltese_phonetic
      @EnglishSentenceMarquee << sentence.english_sentence
    end
    
  end
  
  def norwegian
    
    @sentence = Sentence.all
    
    @NorseSentenceMarquee = []
    @NorsePhoneticMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence|
      @NorseSentenceMarquee << sentence.norse_sentence
      @NorsePhoneticMarquee << sentence.norse_phonetic
      @EnglishSentenceMarquee << sentence.english_sentence
    end
    
  end


end