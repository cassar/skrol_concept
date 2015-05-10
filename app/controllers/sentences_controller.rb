class SentencesController < ApplicationController
  
  def show
    @sentence = Sentence.find(params[:id])
  end
  
  def new
    @sentence = Sentence.new
  end
  
  def index
    @sentence = Sentence.all
    
    require 'bing_translator'
    require 'httparty'
    
    translator = BingTranslator.new('SkrollApp', 'wQHWbTTe+glxEd5J16lkSgTSNz9C8M5Ca2z98HHG0sg=')
    
    @sentence.each do |sentence|
      
      #English Phonetic
      
      if sentence.english_phonetic.nil? == true
        sentence.english_phonetic = PhoneticSentenceTranslate(sentence.english_sentence)
        sentence.save
      end
      
      #German
      
      if sentence.german_sentence.nil? == true
        sentence.german_sentence = translator.translate(sentence.english_sentence, :from => 'en', :to => 'de')
        sentence.save
      end  
      
      #Japanese
      
      if sentence.japanese_sentence.nil? == true
        sentence.japanese_sentence = translator.translate(sentence.english_sentence, :from => 'en', :to => 'ja')
        sentence.save
      end
      
      #Chinese Traditonal
      
      if sentence.chinese_traditional.nil? == true
        sentence.chinese_traditional = translator.translate(sentence.english_sentence, :from => 'en', :to => 'zh-CHT')
        sentence.save
      end 
      
      #Chinese Simplified
      
      if sentence.chinese_simplified.nil? == true
        sentence.chinese_simplified = translator.translate(sentence.english_sentence, :from => 'en', :to => 'zh-CHS')
        sentence.save
      end 
      
      #Maltese
      
      if sentence.maltese_sentence.nil? == true
        sentence.maltese_sentence = translator.translate(sentence.english_sentence, :from => 'en', :to => 'mt')
        sentence.save
      end 
      
      #Portuguese
      
      if sentence.portuguese_sentence.nil? == true
        sentence.portuguese_sentence = translator.translate(sentence.english_sentence, :from => 'en', :to => 'pt')
        sentence.save
      end
      
      #Spanish (Portuguese Phonetic)
      
      if sentence.portuguese_phonetic.nil? == true
        sentence.portuguese_phonetic = translator.translate(sentence.english_sentence, :from => 'en', :to => 'es')
        sentence.save
      end  
      
      #Norwegian
      
      if sentence.norse_sentence.nil? == true
        sentence.norse_sentence = translator.translate(sentence.english_sentence, :from => 'en', :to => 'no')
        sentence.save
      end  
    end  
  end
  
  def create
    @sentence = Sentence.new(sentence_params)
    if @sentence.save
      flash[:success] = "Entry Saved"
      redirect_to @sentence
    else
      render 'new'
    end
  end
  
  def edit
    @sentence = Sentence.find(params[:id])
  end
  
  def update
    @sentence = Sentence.find_by_id(params[:id])
    if @sentence.update_attributes(sentence_params)
      flash[:success] = "Sentence updated"
      redirect_to @sentence
    else
      render 'edit'
    end
  end
  
  private
  
    def sentence_params
      params.require(:sentence).permit(:english_sentence, :english_phonetic)
    end

end
