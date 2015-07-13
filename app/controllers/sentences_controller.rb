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
      flash[:success] = 'Entry Saved'
      redirect_to @sentence
    else
      render 'new'
    end
  end

  def edit
    @sentence = Sentence.find(params[:id])
  end

  def update
    @sentence = Sentence.find(params[:id])
    if @sentence.update_attributes(sentence_params)
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
