class RenameColumns < ActiveRecord::Migration
  def change
    rename_column :sentences, :EnglishSentence, :english_sentence
    rename_column :sentences, :EnglishPhonetic, :english_phonetic
    rename_column :sentences, :GermanSentence, :german_sentence
    rename_column :sentences, :GermanPhonetic, :german_phonetic
    rename_column :sentences, :JapaneseSentence, :japanese_sentence
    rename_column :sentences, :JapaneseRomaji, :japanese_Romaji
  end
end
