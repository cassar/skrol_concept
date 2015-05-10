class AddColumnsLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :language_sentence, :string
    add_column :languages, :language_phonetic, :string
  end
end
