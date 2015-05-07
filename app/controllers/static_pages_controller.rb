class StaticPagesController < ApplicationController
  include StaticPagesHelper

  def home
  end
  
  def english
    
    require 'httparty'
    
    @sentence = Sentence.all
    
    @sentence.each do |sentence|
      if sentence.english_phonetic.nil? == true
        sentence.english_phonetic = PhoneticSentenceTranslate(sentence.english_sentence)
        sentence.save
      end  
    end  
    
    @EnglishPhoneticMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence|
      @EnglishPhoneticMarquee << sentence.english_phonetic
      @EnglishSentenceMarquee << sentence.english_sentence
    end

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
    
    require 'bing_translator'
    
    @sentence = Sentence.all
    
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    
    @sentence.each do |sentence|
      if sentence.japanese_sentence.nil? == true
        sentence.japanese_sentence = translator.translate(sentence.english_sentence, :from => 'en', :to => 'ja')
        sentence.save
      end  
    end  
    
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
    
    require 'bing_translator'
    
    @sentence = Sentence.all
    
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    
    @sentence.each do |sentence|
      if sentence.portuguese_sentence.nil? == true
        sentence.portuguese_sentence = translator.translate(sentence.english_sentence, :from => 'en', :to => 'pt')
        sentence.save
      end  
    end 
    
    @sentence.each do |sentence|
      if sentence.portuguese_phonetic.nil? == true
        sentence.portuguese_phonetic = translator.translate(sentence.english_sentence, :from => 'en', :to => 'es')
        sentence.save
      end  
    end  
    
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
    
    require 'bing_translator'
    
    @sentence = Sentence.all
    
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    
    @sentence.each do |sentence|
      if sentence.chinese_traditional.nil? == true
        sentence.chinese_traditional = translator.translate(sentence.english_sentence, :from => 'en', :to => 'zh-CHT')
        sentence.save
      end  
    end  
    
    @sentence.each do |sentence|
      if sentence.chinese_simplified.nil? == true
        sentence.chinese_simplified = translator.translate(sentence.english_sentence, :from => 'en', :to => 'zh-CHS')
        sentence.save
      end  
    end  
    
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
    
    require 'bing_translator'
    
    @sentence = Sentence.all
    
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    
    @sentence.each do |sentence|
      if sentence.maltese_sentence.nil? == true
        sentence.maltese_sentence = translator.translate(sentence.english_sentence, :from => 'en', :to => 'mt')
        sentence.save
      end  
    end  
    
    @MalteseSentenceMarquee = []
    @MaltesePhoneticMarquee = []
    @EnglishSentenceMarquee = []
    
    @sentence.each do |sentence|
      @MalteseSentenceMarquee << sentence.maltese_sentence
      @MaltesePhoneticMarquee << sentence.maltese_phonetic
      @EnglishSentenceMarquee << sentence.english_sentence
    end
    
  end


end