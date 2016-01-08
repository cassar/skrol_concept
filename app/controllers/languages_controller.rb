class LanguagesController < ApplicationController
  def show
  end

  def index
  end

  def english_profile
    @sentence = Sentence.all
  end
end
