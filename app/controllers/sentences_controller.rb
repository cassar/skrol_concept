class SentencesController < ApplicationController
  def show
    @sentence = Sentence.find(params[:id])
  end
  
  def new
    @sentence = Sentence.new
  end
  
  def index
    @sentence = Sentence.all
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
  
  private
  
    def sentence_params
      params.require(:sentence).permit(:english_sentence)
    end

end
