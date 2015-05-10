class AddColumnsLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :language_sentence, :foreign_key
    add_column :languages, :language_phonetic, :foreign_key
  end
end
