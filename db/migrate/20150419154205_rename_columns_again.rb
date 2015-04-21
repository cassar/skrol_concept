class RenameColumnsAgain < ActiveRecord::Migration
  def change
    rename_column :sentences, :japanese_Romaji, :japanese_romaji
  end
end
