class StaticPagesController < ApplicationController

  def home
  end
  
  def english
    
    require 'httparty'
    
    #Translate word picking the first entry if there are a few
    
    def PearsonPhoneticLookup(english_word)
      @phoneticWordArray = []
      @englishWord = english_word
      @PearsonHash = HTTParty.get("https://api.pearson.com/v2/dictionaries/ldoce5/entries?headword=#{@englishWord}.").parsed_response
      
      if @PearsonHash["count"] == 0
        @phoneticWord = "###"
        
      elsif @PearsonHash["results"].count == 0
        if @PearsonHash["results"]["pronunciations"].present? == true
          @phoneticWord = @PearsonHash["results"]["pronunciations"][0]["ipa"] 
        else
          @phoneticWord = "**NoIpaPresent"
        end  
        if @phoneticWord.split.count > 1
            @phoneticWord = @phoneticWord.split[0]
            @phoneticWord = @phoneticWord[0, (@phoneticWord.length - 2)]
        end  
          
      else 
        @PearsonResultsCount = @PearsonHash["results"].count
        @resultsCounter = 0
        while @resultsCounter < @PearsonResultsCount
          if @PearsonHash["results"][@resultsCounter]["pronunciations"].present? == true
            @phoneticWordArray << @PearsonHash["results"][@resultsCounter]["pronunciations"][0]["ipa"]
          end
          @resultsCounter += 1
        end
        if @phoneticWordArray.count == 0
          @phoneticWord = "**NoIpaPresent"
        else
          @phoneticWord = @phoneticWordArray[0]
          if @phoneticWord.split.count > 1
            @phoneticWord = @phoneticWord.split[0]
            @phoneticWord = @phoneticWord[0, (@phoneticWord.length - 1)]
          end  
        end
      end  
      return @phoneticWord
    end  
    
    #Translate stand alone sentence in to Phonetic Alphabet
    
    def PhoneticSentenceTranslate(english_sentence)
      @englishSentenceArray = english_sentence.split
      @englishPhoneticSentence = []
      for element in @englishSentenceArray
        @englishPhoneticSentence << PearsonPhoneticLookup(element)
      end
      return @englishPhoneticSentence.join(" ")
    end
    

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