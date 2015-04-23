class RenamePortuguese < ActiveRecord::Migration
  def change
    rename_column :sentences, :portuguese, :portuguese_sentence
  end
end
