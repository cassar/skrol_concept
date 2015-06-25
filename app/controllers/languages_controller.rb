class LanguagesController < ApplicationController
  def show
    @language = Language.friendly.find(params[:id])
  end

  def new
    @language = Language.new
  end

  def index
    @language = Language.all
  end

  def create
    @language = Language.new(language_params)
    if @language.save
      flash[:success] = 'Entry Saved'
      redirect_to @language
    else
      render 'new'
    end
  end

  private

  def language_params
    params.require(:language).permit(:language_name)
  end
end
