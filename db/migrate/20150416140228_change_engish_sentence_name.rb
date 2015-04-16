class ChangeEngishSentenceName < ActiveRecord::Migration
  def change
    rename_column :sentences, :EngishSentence, :EnglishSentence
  end
end
