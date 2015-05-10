class AddLanguagesTable < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :language_name
      t.string :language_sentence
      t.string :language_phonetic
      t.string :language_image
    end
  end
end
