class RenameMalteseColumn < ActiveRecord::Migration
  def change
    rename_column :sentences, :maltese, :maltese_sentence
  end
end
