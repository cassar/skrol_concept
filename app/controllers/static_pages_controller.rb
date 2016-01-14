class StaticPagesController < ApplicationController
  include StaticPagesHelper

  def home
  end

  def english
    # http://en.wiktionary.org/w/index.php?title=enjoy&printable=yes
    require 'httparty'
    @sentence = Sentence.all
    @sentence.each do |sentence|
      if sentence.english_phonetic.nil? == true
        sentence.english_phonetic = phonetic_sentence_translate(sentence.english_sentence)
        sentence.save
      end
    end
    @english_phonetic_marquee = []
    @english_sentence_marquee = []
    @sentence.each do |sentence|
      @english_phonetic_marquee << sentence.english_phonetic
      @english_sentence_marquee << sentence.english_sentence
    end
  end

  def german
    require 'bing_translator'
    @sentence = Sentence.all
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    @sentence.each do |sentence|
      if sentence.german_sentence.nil? == true
        sentence.german_sentence = translator.translate(sentence.english_sentence, from: 'en', to: 'de')
        sentence.save
      end
    end
    @german_sentence_marquee = []
    @german_phonetic_marquee = []
    @english_sentence_marquee = []
    @sentence.each do |sentence|
      @german_sentence_marquee << sentence.german_sentence
      @german_phonetic_marquee << sentence.german_phonetic
      @english_sentence_marquee << sentence.english_sentence
    end
  end

  def japanese
    require 'bing_translator'
    @sentence = Sentence.all
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    @sentence.each do |sentence|
      if sentence.japanese_sentence.nil? == true
        sentence.japanese_sentence = translator.translate(sentence.english_sentence, from: 'en', to: 'ja')
        sentence.save
      end
    end
    @japanese_sentence_marquee = []
    @japanese_romaji_marquee = []
    @english_sentence_marquee = []
    @sentence.each do |sentence|
      @japanese_sentence_marquee << sentence.japanese_sentence
      @japanese_romaji_marquee << sentence.japanese_romaji
      @english_sentence_marquee << sentence.english_sentence
    end
  end

  def portuguese
    require 'bing_translator'
    @sentence = Sentence.all
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    @sentence.each do |sentence|
      if sentence.portuguese_sentence.nil? == true
        sentence.portuguese_sentence = translator.translate(sentence.english_sentence, from: 'en', to: 'pt')
        sentence.save
      end
      if sentence.portuguese_phonetic.nil? == true
        sentence.portuguese_phonetic = translator.translate(sentence.english_sentence, from: 'en', to: 'es')
        sentence.save
      end
    end
    @portuguese_sentence_marquee = []
    @portuguese_phonetic_marquee = []
    @english_sentence_marquee = []
    @sentence.each do |sentence|
      @portuguese_sentence_marquee << sentence.portuguese_sentence
      @portuguese_phonetic_marquee << sentence.portuguese_phonetic
      @english_sentence_marquee << sentence.english_sentence
    end
  end

  def chinese
    require 'bing_translator'
    @sentence = Sentence.all
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    @sentence.each do |sentence|
      if sentence.chinese_traditional.nil? == true
        sentence.chinese_traditional = translator.translate(sentence.english_sentence, from: 'en', to: 'zh-CHT')
        sentence.save
      end
      if sentence.chinese_simplified.nil? == true
        sentence.chinese_simplified = translator.translate(sentence.english_sentence, from: 'en', to: 'zh-CHS')
        sentence.save
      end
    end
    @chinese_traditional_marquee = []
    @chinese_simplified_marquee = []
    @english_sentence_marquee = []
    @sentence.each do |sentence|
      @chinese_traditional_marquee << sentence.chinese_traditional
      @chinese_simplified_marquee << sentence.chinese_simplified
      @english_sentence_marquee << sentence.english_sentence
    end
  end

  def maltese
    require 'bing_translator'
    @sentence = Sentence.all
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    @sentence.each do |sentence|
      if sentence.maltese_sentence.nil? == true
        sentence.maltese_sentence = translator.translate(sentence.english_sentence, from: 'en', to: 'mt')
        sentence.save
      end
    end
    @maltese_sentence_marquee = []
    @maltese_phonetic_marquee = []
    @english_sentence_marquee = []
    @sentence.each do |sentence|
      @maltese_sentence_marquee << sentence.maltese_sentence
      @maltese_phonetic_marquee << sentence.maltese_phonetic
      @english_sentence_marquee << sentence.english_sentence
    end
  end

  def norwegian
    require 'bing_translator'
    @sentence = Sentence.all
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    @sentence.each do |sentence|
      if sentence.norse_sentence.nil? == true
        sentence.norse_sentence = translator.translate(sentence.english_sentence, from: 'en', to: 'no')
        sentence.save
      end
      if sentence.norse_phonetic.nil? == true
        sentence.norse_phonetic = translator.translate(sentence.english_sentence, from: 'en', to: 'sv')
        sentence.save
      end
    end
    @norse_sentence_marquee = []
    @norse_phonetic_marquee = []
    @english_sentence_marquee = []
    @sentence.each do |sentence|
      @norse_sentence_marquee << sentence.norse_sentence
      @norse_phonetic_marquee << sentence.norse_phonetic
      @english_sentence_marquee << sentence.english_sentence
    end
  end
end
