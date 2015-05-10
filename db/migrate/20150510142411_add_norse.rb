class AddNorse < ActiveRecord::Migration
  def change
    add_column :sentences, :norse_sentence, :string
    add_column :sentences, :norse_phonetic, :string
  end
end
