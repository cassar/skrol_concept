class AddSentencesTable < ActiveRecord::Migration
  def change
    create_table :sentences do |t|
      t.string :EngishSentence
      t.string :EnglishPhonetic
      t.string :GermanSentence
      t.string :GermanPhonetic
      t.string :JapaneseSentence
      t.string :JapaneseRomaji
      t.string :image
      
      t.timestamps null: false
    end  
  end
end
